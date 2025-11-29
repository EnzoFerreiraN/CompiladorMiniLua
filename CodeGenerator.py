from llvmlite import ir
from dist.MiniLuaVisitor import MiniLuaVisitor

class CodeGenerator(MiniLuaVisitor):
    def __init__(self):
        self.module = ir.Module(name="minilua_module")
        self.module.triple = "i686-pc-windows-gnu"
            
        self.builder = None
        self.func = None
        self.symbol_table = {}  # Mapeia nomes de variáveis para ponteiros LLVM
        self.loops = [] # Pilha para rastrear blocos de fusão de loops para o break
        
        # Inicializa funções da biblioteca padrão
        self._init_stdlib()

    def _init_stdlib(self):
        # printf
        voidptr_ty = ir.IntType(8).as_pointer()
        printf_ty = ir.FunctionType(ir.IntType(32), [voidptr_ty], var_arg=True)
        self.printf = ir.Function(self.module, printf_ty, name="printf")
        
        # pow (double, double) -> double
        pow_ty = ir.FunctionType(ir.DoubleType(), [ir.DoubleType(), ir.DoubleType()])
        self.pow = ir.Function(self.module, pow_ty, name="pow")
        
        # floor (double) -> double
        floor_ty = ir.FunctionType(ir.DoubleType(), [ir.DoubleType()])
        self.floor = ir.Function(self.module, floor_ty, name="floor")
        
        # fmod (double, double) -> double (para módulo)
        fmod_ty = ir.FunctionType(ir.DoubleType(), [ir.DoubleType(), ir.DoubleType()])
        self.fmod = ir.Function(self.module, fmod_ty, name="fmod")
        
        # malloc (size_t) -> void*
        malloc_ty = ir.FunctionType(voidptr_ty, [ir.IntType(32)]) # Assumindo size_t de 32 bits para i686
        self.malloc = ir.Function(self.module, malloc_ty, name="malloc")
        
        # strlen (char*) -> size_t
        strlen_ty = ir.FunctionType(ir.IntType(32), [voidptr_ty])
        self.strlen = ir.Function(self.module, strlen_ty, name="strlen")
        
        # strcpy (char*, char*) -> char*
        strcpy_ty = ir.FunctionType(voidptr_ty, [voidptr_ty, voidptr_ty])
        self.strcpy = ir.Function(self.module, strcpy_ty, name="strcpy")
        
        # strcat (char*, char*) -> char*
        strcat_ty = ir.FunctionType(voidptr_ty, [voidptr_ty, voidptr_ty])
        self.strcat = ir.Function(self.module, strcat_ty, name="strcat")

        # scanf
        scanf_ty = ir.FunctionType(ir.IntType(32), [voidptr_ty], var_arg=True)
        self.scanf = ir.Function(self.module, scanf_ty, name="scanf")
        
        # Funções de runtime para arrays dinâmicos
        # DynamicArray* minilua_new_array(int element_size)
        new_array_ty = ir.FunctionType(voidptr_ty, [ir.IntType(32)])
        self.minilua_new_array = ir.Function(self.module, new_array_ty, name="minilua_new_array")
        
        # void minilua_ensure_capacity(DynamicArray* arr, int index)
        ensure_cap_ty = ir.FunctionType(ir.VoidType(), [voidptr_ty, ir.IntType(32)])
        self.minilua_ensure_capacity = ir.Function(self.module, ensure_cap_ty, name="minilua_ensure_capacity")
        
        # int minilua_array_length(DynamicArray* arr)
        arr_len_ty = ir.FunctionType(ir.IntType(32), [voidptr_ty])
        self.minilua_array_length = ir.Function(self.module, arr_len_ty, name="minilua_array_length")
        
        # void* minilua_get_data_ptr(DynamicArray* arr)
        get_data_ty = ir.FunctionType(voidptr_ty, [voidptr_ty])
        self.minilua_get_data_ptr = ir.Function(self.module, get_data_ty, name="minilua_get_data_ptr")

    def _get_llvm_type(self, type_ctx):
        if type_ctx.TYPE_NUMBER() or type_ctx.TYPE_INTEGER():
            return ir.DoubleType()
        elif type_ctx.TYPE_BOOLEAN():
            return ir.IntType(1)
        elif type_ctx.TYPE_STRING():
            return ir.IntType(8).as_pointer()
        elif type_ctx.TYPE_ARRAY():
            # Array Dinâmico é tratado como void* (ponteiro para struct) no LLVM IR
            # Usamos funções de runtime para manipulá-lo
            return ir.IntType(8).as_pointer()
        return ir.DoubleType() # Padrão

    def _get_empty_string_ptr(self):
        # Verifica se já está definido
        name = "empty_string_const"
        if name in self.module.globals:
            gvar = self.module.globals[name]
            return self.builder.bitcast(gvar, ir.IntType(8).as_pointer())
        
        # Cria novo
        c_str = ir.Constant(ir.ArrayType(ir.IntType(8), 1), bytearray(b"\0"))
        gvar = ir.GlobalVariable(self.module, c_str.type, name=name)
        gvar.linkage = 'internal'
        gvar.global_constant = True
        gvar.initializer = c_str
        return self.builder.bitcast(gvar, ir.IntType(8).as_pointer())

    def visitProgram(self, ctx):
        # program : function_decl* main_function EOF ;
        # Visita todas as declarações de função primeiro
        for func_decl in ctx.function_decl():
            self.visit(func_decl)
        # Visita a função main
        self.visit(ctx.main_function())
        return self.module

    def visitFunction_decl(self, ctx):
        # function_decl : FUNCTION return_type IDENTIFIER LPAREN param_list? RPAREN block END ;
        name = ctx.IDENTIFIER().getText()
        
        # Determina o tipo de retorno
        ret_type_ctx = ctx.return_type()
        if ret_type_ctx.VOID():
            ret_type = ir.VoidType()
        else:
            # Por simplicidade, assume que todos os números são double
            ret_type = ir.DoubleType()
            
        # Determina os tipos dos argumentos
        arg_types = []
        arg_names = []
        arg_element_types = []
        
        if ctx.param_list():
            for param in ctx.param_list().param():
                param_type_ctx = param.type_()
                llvm_param_type = self._get_llvm_type(param_type_ctx)
                arg_types.append(llvm_param_type)
                arg_names.append(param.IDENTIFIER().getText())
                
                if param_type_ctx.TYPE_ARRAY():
                    arg_element_types.append(self._get_llvm_type(param_type_ctx.type_()))
                else:
                    arg_element_types.append(None)
                
        func_type = ir.FunctionType(ret_type, arg_types)
        func = ir.Function(self.module, func_type, name=name)
        
        # Salva o contexto anterior
        prev_builder = self.builder
        prev_func = self.func
        prev_sym_table = self.symbol_table.copy()
        
        self.func = func
        self.symbol_table = {} # Novo escopo
        
        entry_block = func.append_basic_block(name="entry")
        self.builder = ir.IRBuilder(entry_block)
        
        # Registra argumentos
        for i, arg in enumerate(func.args):
            arg.name = arg_names[i]
            ptr = self.builder.alloca(arg.type, name=arg.name)
            self.builder.store(arg, ptr)
            self.symbol_table[arg.name] = (ptr, arg_element_types[i])
            
        self.visit(ctx.block())
        
        # Garante retorno para funções void se estiver faltando
        if isinstance(ret_type, ir.VoidType) and not self.builder.block.is_terminated:
            self.builder.ret_void()
        elif not self.builder.block.is_terminated:
            # Retorno padrão 0.0
            self.builder.ret(ir.Constant(ir.DoubleType(), 0.0))
            
        # Restaura o contexto
        self.builder = prev_builder
        self.func = prev_func
        self.symbol_table = prev_sym_table

    def visitMain_function(self, ctx):
        # main_function : FUNCTION VOID MAIN LPAREN RPAREN block END ;
        func_type = ir.FunctionType(ir.IntType(32), [], var_arg=False)
        self.func = ir.Function(self.module, func_type, name="main")
        entry_block = self.func.append_basic_block(name="entry")
        self.builder = ir.IRBuilder(entry_block)
        
        self.visit(ctx.block())
        
        # Retorna 0
        if not self.builder.block.is_terminated:
            self.builder.ret(ir.Constant(ir.IntType(32), 0))

    def visitBlock(self, ctx):
        for child in ctx.getChildren():
            self.visit(child)

    def visitDo_stmt(self, ctx):
        # do_stmt : DO block END ;
        # Cria um novo escopo
        prev_sym_table = self.symbol_table.copy()
        
        self.visit(ctx.block())
        
        # Restaura o escopo
        self.symbol_table = prev_sym_table

    def visitStatement(self, ctx):
        return self.visitChildren(ctx)

    def visitCommand(self, ctx):
        # command : assignment | function_call_stmt | if_stmt | while_stmt | for_stmt | return_stmt | do_stmt ;
        if ctx.return_stmt():
            return self.visit(ctx.return_stmt())
        return self.visitChildren(ctx)

    def visitReturn_stmt(self, ctx):
        # return_stmt : RETURN expression? SEMI ;
        if ctx.expression():
            val = self.visit(ctx.expression())
            if self.func.return_value.type == ir.VoidType():
                # Tentando retornar valor em função void
                print("Warning: Returning value in void function")
                self.builder.ret_void()
            else:
                val = self._ensure_double(val)
                self.builder.ret(val)
        else:
            if self.func.return_value.type != ir.VoidType():
                # Retornando void em função não-void
                print("Warning: Returning void in non-void function")
                self.builder.ret(ir.Constant(ir.DoubleType(), 0.0))
            else:
                self.builder.ret_void()

    def visitVar_decl(self, ctx):
        # var_decl : LOCAL IDENTIFIER COLON type (ASSIGN expression)? SEMI ;
        name = ctx.IDENTIFIER().getText()
        type_ctx = ctx.type_()
        llvm_type = self._get_llvm_type(type_ctx)
        
        ptr = self.builder.alloca(llvm_type, name=name)
        
        element_type = None
        if type_ctx.TYPE_ARRAY():
            element_type = self._get_llvm_type(type_ctx.type_())
            
        self.symbol_table[name] = (ptr, element_type)
        
        if ctx.expression():
            val = self.visit(ctx.expression())
            
            # Conversão de tipo
            if llvm_type == ir.DoubleType():
                val = self._ensure_double(val)
            elif llvm_type == ir.IntType(1):
                val = self._ensure_bool(val)
            # Para strings e arrays, esperamos que a expressão retorne o tipo de ponteiro correto
            
            self.builder.store(val, ptr)
        else:
            # Inicializa com valor padrão
            if llvm_type == ir.DoubleType():
                self.builder.store(ir.Constant(ir.DoubleType(), 0.0), ptr)
            elif llvm_type == ir.IntType(1):
                self.builder.store(ir.Constant(ir.IntType(1), 0), ptr)
            elif isinstance(llvm_type, ir.PointerType):
                # Inicializa ponteiros como null ou aloca se for um array?
                # Para arrays, podemos querer alocar um tamanho padrão ou apenas null.
                # Para strings, inicializa com string vazia ""
                if type_ctx.TYPE_STRING():
                    self.builder.store(self._get_empty_string_ptr(), ptr)
                else:
                    # Vamos inicializar como null para outros (arrays inicialmente null)
                    self.builder.store(ir.Constant(llvm_type, None), ptr)
                
                # Se for um array, aloca a struct de array dinâmico
                if type_ctx.TYPE_ARRAY():
                    # Determina o tamanho do elemento
                    inner_type = self._get_llvm_type(type_ctx.type_())
                    element_size = 8 # Default double
                    if inner_type == ir.IntType(1):
                        element_size = 1
                    elif isinstance(inner_type, ir.PointerType):
                        element_size = 4 # Tamanho do ponteiro em 32-bit
                    
                    # Chama minilua_new_array(element_size)
                    arr_ptr = self.builder.call(self.minilua_new_array, [ir.Constant(ir.IntType(32), element_size)])
                    self.builder.store(arr_ptr, ptr)

    def visitConst_decl(self, ctx):
        # const_decl : CONST IDENTIFIER COLON type ASSIGN expression SEMI ;
        name = ctx.IDENTIFIER().getText()
        type_ctx = ctx.type_()
        llvm_type = self._get_llvm_type(type_ctx)
        
        ptr = self.builder.alloca(llvm_type, name=name)
        self.symbol_table[name] = (ptr, None)
        
        val = self.visit(ctx.expression())
        
        # Conversão de tipo
        if llvm_type == ir.DoubleType():
            val = self._ensure_double(val)
        elif llvm_type == ir.IntType(1):
            val = self._ensure_bool(val)
        
        self.builder.store(val, ptr)

    def visitAssignment(self, ctx):
        # assignment : IDENTIFIER ASSIGN expression SEMI | ...
        if ctx.LBRACK():
            # Atribuição de array: IDENTIFIER LBRACK expression RBRACK ASSIGN expression SEMI
            name = ctx.IDENTIFIER().getText()
            index_val = self.visit(ctx.expression(0))
            val = self.visit(ctx.expression(1))
            
            if name in self.symbol_table:
                arr_ptr_ptr, element_type = self.symbol_table[name] # Ponteiro para o ponteiro do array
                arr_ptr = self.builder.load(arr_ptr_ptr, name="arr_ptr")
                
                # Converte índice para int
                if index_val.type == ir.DoubleType():
                    index_val = self.builder.fptosi(index_val, ir.IntType(32))
                
                # Subtrai 1 para indexação baseada em 1
                index_val = self.builder.sub(index_val, ir.Constant(ir.IntType(32), 1), name="idx_adj")
                
                # Garante capacidade
                # minilua_ensure_capacity(arr_ptr, index)
                # A função de runtime recebe o índice que queremos acessar e atualiza o tamanho para index + 1
                self.builder.call(self.minilua_ensure_capacity, [arr_ptr, index_val])
                
                # Obtém ponteiro de dados
                # void* data = minilua_get_data_ptr(arr_ptr)
                data_ptr = self.builder.call(self.minilua_get_data_ptr, [arr_ptr])
                
                # Converte ponteiro de dados para ponteiro do tipo do elemento
                if element_type is None:
                     # Fallback
                     element_type = ir.DoubleType()
                     
                typed_data_ptr = self.builder.bitcast(data_ptr, element_type.as_pointer())
                
                # Obtém ponteiro do elemento
                elem_ptr = self.builder.gep(typed_data_ptr, [index_val], name="elem_ptr")
                
                # Armazena valor
                if element_type == ir.DoubleType():
                    val = self._ensure_double(val)
                elif element_type == ir.IntType(1):
                    val = self._ensure_bool(val)
                
                self.builder.store(val, elem_ptr)
            else:
                print(f"Error: Array {name} not declared.")
        else:
            # Atribuição simples
            name = ctx.IDENTIFIER().getText()
            val = self.visit(ctx.expression(0))
            
            if name in self.symbol_table:
                ptr, _ = self.symbol_table[name]
                # Verifica tipo de destino
                target_type = ptr.type.pointee
                
                if target_type == ir.DoubleType():
                    val = self._ensure_double(val)
                elif target_type == ir.IntType(1):
                    val = self._ensure_bool(val)
                
                self.builder.store(val, ptr)
            else:
                print(f"Error: Variable {name} not declared.")

    def visitFunction_call_stmt(self, ctx):
        self.visit(ctx.function_call())

    def visitFunction_call(self, ctx):
        name = ctx.IDENTIFIER().getText()
        if name == "len":
            # len(string) -> int
            if ctx.arg_list() and len(ctx.arg_list().expression()) == 1:
                arg = self.visit(ctx.arg_list().expression(0))
                # Verifica se é uma string (i8*)
                if isinstance(arg.type, ir.PointerType) and arg.type.pointee == ir.IntType(8):
                    length = self.builder.call(self.strlen, [arg], name="len")
                    return self.builder.sitofp(length, ir.DoubleType())
                else:
                    print("Error: len() expects a string")
                    return ir.Constant(ir.DoubleType(), 0.0)
            else:
                print("Error: len() expects exactly one argument")
                return ir.Constant(ir.DoubleType(), 0.0)
        elif name == "arrayLength":
            if ctx.arg_list() and len(ctx.arg_list().expression()) == 1:
                arg = self.visit(ctx.arg_list().expression(0))
                # arg deve ser i8* (ponteiro para DynamicArray)
                # Chama minilua_array_length(arg)
                length = self.builder.call(self.minilua_array_length, [arg], name="arr_len")
                return self.builder.sitofp(length, ir.DoubleType())
            else:
                print("Error: arrayLength() expects exactly one argument")
                return ir.Constant(ir.DoubleType(), 0.0)
        elif name == "inputNumber":
            # Aloca espaço na pilha para double
            ptr = self.builder.alloca(ir.DoubleType())
            
            # String de formatação "%lf"
            fmt = "%lf\0"
            c_fmt = ir.Constant(ir.ArrayType(ir.IntType(8), len(fmt)), bytearray(fmt.encode("utf8")))
            global_fmt = ir.GlobalVariable(self.module, c_fmt.type, name=f"fmt_in_num_{self.module.get_unique_name()}")
            global_fmt.linkage = 'internal'
            global_fmt.global_constant = True
            global_fmt.initializer = c_fmt
            fmt_arg = self.builder.bitcast(global_fmt, ir.IntType(8).as_pointer())
            
            # Chama scanf
            self.builder.call(self.scanf, [fmt_arg, ptr])
            
            # Carrega e retorna
            return self.builder.load(ptr, name="input_num")
            
        elif name == "inputString":
            # Aloca buffer (256 bytes)
            size = 256
            buf_void = self.builder.call(self.malloc, [ir.Constant(ir.IntType(32), size)])
            buf = self.builder.bitcast(buf_void, ir.IntType(8).as_pointer())
            
            # String de formatação "%s"
            fmt = "%s\0"
            c_fmt = ir.Constant(ir.ArrayType(ir.IntType(8), len(fmt)), bytearray(fmt.encode("utf8")))
            global_fmt = ir.GlobalVariable(self.module, c_fmt.type, name=f"fmt_in_str_{self.module.get_unique_name()}")
            global_fmt.linkage = 'internal'
            global_fmt.global_constant = True
            global_fmt.initializer = c_fmt
            fmt_arg = self.builder.bitcast(global_fmt, ir.IntType(8).as_pointer())
            
            # Chama scanf
            self.builder.call(self.scanf, [fmt_arg, buf])
            
            return buf
            
        elif name == "print":
            args = []
            if ctx.arg_list():
                for exp in ctx.arg_list().expression():
                    val = self.visit(exp)
                    args.append(val)
            
            for i, val in enumerate(args):
                # Determina formato
                if isinstance(val.type, ir.PointerType) and val.type.pointee == ir.IntType(8):
                    fmt = "%s"
                elif val.type == ir.DoubleType():
                    fmt = "%.2f" # Usa %.2f para saída mais limpa
                elif val.type == ir.IntType(32):
                    fmt = "%d"
                elif val.type == ir.IntType(1):
                    fmt = "%d"
                else:
                    fmt = "%s" # Fallback
                
                # Adiciona espaço se não for o último
                if i < len(args) - 1:
                    fmt += " "
                
                # Cria string de formatação
                fmt += "\0"
                c_fmt = ir.Constant(ir.ArrayType(ir.IntType(8), len(fmt)), bytearray(fmt.encode("utf8")))
                global_fmt = ir.GlobalVariable(self.module, c_fmt.type, name=f"fmt_{self.module.get_unique_name()}")
                global_fmt.linkage = 'internal'
                global_fmt.global_constant = True
                global_fmt.initializer = c_fmt
                fmt_arg = self.builder.bitcast(global_fmt, ir.IntType(8).as_pointer())
                
                self.builder.call(self.printf, [fmt_arg, val])
                
            # Imprime nova linha no final
            nl = "\n\0"
            c_nl = ir.Constant(ir.ArrayType(ir.IntType(8), len(nl)), bytearray(nl.encode("utf8")))
            global_nl = ir.GlobalVariable(self.module, c_nl.type, name=f"nl_{self.module.get_unique_name()}")
            global_nl.linkage = 'internal'
            global_nl.global_constant = True
            global_nl.initializer = c_nl
            nl_arg = self.builder.bitcast(global_nl, ir.IntType(8).as_pointer())
            self.builder.call(self.printf, [nl_arg])
        else:
            # Chamada de função genérica
            if name in self.module.globals:
                func = self.module.globals[name]
                args = []
                if ctx.arg_list():
                    for i, exp in enumerate(ctx.arg_list().expression()):
                        val = self.visit(exp)
                        # Converte argumentos se necessário
                        if i < len(func.args):
                            target_type = func.args[i].type
                            if target_type == ir.DoubleType():
                                val = self._ensure_double(val)
                        args.append(val)
                return self.builder.call(func, args)
            else:
                print(f"Error: Function {name} not defined")
                return ir.Constant(ir.DoubleType(), 0.0)

    def visitIf_stmt(self, ctx):
        # if expression then block (elseif expression then block)* (else block)? end
        merge_block = self.func.append_basic_block(name="if_merge")
        self._emit_conditional_branch(ctx, 0, merge_block)
        self.builder.position_at_end(merge_block)

    def _emit_conditional_branch(self, ctx, index, merge_block):
        expressions = ctx.expression()
        blocks = ctx.block()
        
        if index < len(expressions):
            cond_exp = expressions[index]
            then_block_ctx = blocks[index]
            
            cond_val = self.visit(cond_exp)
            cond_val = self._ensure_bool(cond_val)
            
            then_bb = self.func.append_basic_block(name=f"then_{index}")
            else_bb = self.func.append_basic_block(name=f"else_{index}")
            
            self.builder.cbranch(cond_val, then_bb, else_bb)
            
            # Bloco Then
            self.builder.position_at_end(then_bb)
            
            # Cria escopo para o bloco then
            prev_sym_table_then = self.symbol_table.copy()
            self.visit(then_block_ctx)
            self.symbol_table = prev_sym_table_then
            
            if not self.builder.block.is_terminated:
                self.builder.branch(merge_block)
                
            # Bloco Else (recursão ou else final)
            self.builder.position_at_end(else_bb)
            self._emit_conditional_branch(ctx, index + 1, merge_block)
        else:
            # Sem mais expressões, verifica else final
            if len(blocks) > len(expressions):
                else_block_ctx = blocks[len(expressions)]
                
                # Cria escopo para o bloco else
                prev_sym_table_else = self.symbol_table.copy()
                self.visit(else_block_ctx)
                self.symbol_table = prev_sym_table_else
                
                if not self.builder.block.is_terminated:
                    self.builder.branch(merge_block)
            else:
                self.builder.branch(merge_block)

    def visitWhile_stmt(self, ctx):
        cond_block = self.func.append_basic_block(name="while_cond")
        body_block = self.func.append_basic_block(name="while_body")
        merge_block = self.func.append_basic_block(name="while_merge")
        
        self.builder.branch(cond_block)
        
        # Condição
        self.builder.position_at_end(cond_block)
        cond_val = self.visit(ctx.expression())
        cond_val = self._ensure_bool(cond_val)
        self.builder.cbranch(cond_val, body_block, merge_block)
        
        # Corpo
        self.builder.position_at_end(body_block)
        
        # Cria escopo para o corpo do while
        prev_sym_table = self.symbol_table.copy()
        self.visit(ctx.block())
        self.symbol_table = prev_sym_table
        
        if not self.builder.block.is_terminated:
            self.builder.branch(cond_block)
            
        self.builder.position_at_end(merge_block)

    def visitFor_stmt(self, ctx):
        var_name = ctx.IDENTIFIER().getText()
        start_val = self.visit(ctx.expression(0))
        end_val = self.visit(ctx.expression(1))
        step_val = ir.Constant(ir.DoubleType(), 1.0)
        if len(ctx.expression()) > 2:
            step_val = self.visit(ctx.expression(2))
            
        start_val = self._ensure_double(start_val)
        end_val = self._ensure_double(end_val)
        step_val = self._ensure_double(step_val)
        
        # Cria novo escopo para variável de loop
        prev_sym_table = self.symbol_table.copy()
        
        ptr = self.builder.alloca(ir.DoubleType(), name=var_name)
        self.symbol_table[var_name] = (ptr, None)
        self.builder.store(start_val, ptr)
        
        cond_block = self.func.append_basic_block(name="for_cond")
        body_block = self.func.append_basic_block(name="for_body")
        merge_block = self.func.append_basic_block(name="for_merge")
        
        self.builder.branch(cond_block)
        
        # Condição
        self.builder.position_at_end(cond_block)
        curr_val = self.builder.load(ptr, name=var_name)
        
        # Verifica sinal do passo para determinar condição
        # Precisamos lidar com isso dinamicamente porque o passo pode ser uma expressão
        # if step >= 0: cond = curr <= end
        # else: cond = curr >= end
        
        step_ge_0 = self.builder.fcmp_ordered('>=', step_val, ir.Constant(ir.DoubleType(), 0.0), name="step_ge_0")
        
        cond_le = self.builder.fcmp_ordered('<=', curr_val, end_val, name="cond_le")
        cond_ge = self.builder.fcmp_ordered('>=', curr_val, end_val, name="cond_ge")
        
        # Seleciona condição baseada no sinal do passo
        cond_val = self.builder.select(step_ge_0, cond_le, cond_ge, name="forcond")
        
        self.builder.cbranch(cond_val, body_block, merge_block)
        
        # Corpo
        self.builder.position_at_end(body_block)
        self.visit(ctx.block())
        
        # Incremento
        curr_val = self.builder.load(ptr, name=var_name)
        next_val = self.builder.fadd(curr_val, step_val, name="nextval")
        self.builder.store(next_val, ptr)
        
        if not self.builder.block.is_terminated:
            self.builder.branch(cond_block)
            
        self.builder.position_at_end(merge_block)
        
        # Restaura o escopo
        self.symbol_table = prev_sym_table

    def visitPowerExp(self, ctx):
        left = self.visit(ctx.expression(0))
        right = self.visit(ctx.expression(1))
        
        left = self._ensure_double(left)
        right = self._ensure_double(right)
        
        return self.builder.call(self.pow, [left, right], name="powtmp")

    def visitAdditiveExp(self, ctx):
        left = self.visit(ctx.expression(0))
        right = self.visit(ctx.expression(1))
        op = ctx.getChild(1).getText()
        
        left = self._ensure_double(left)
        right = self._ensure_double(right)
        
        if op == '+':
            return self.builder.fadd(left, right, name="addtmp")
        elif op == '-':
            return self.builder.fsub(left, right, name="subtmp")
            
    def visitMultiplicativeExp(self, ctx):
        left = self.visit(ctx.expression(0))
        right = self.visit(ctx.expression(1))
        op = ctx.getChild(1).getText()
        
        left = self._ensure_double(left)
        right = self._ensure_double(right)
        
        if op == '*':
            return self.builder.fmul(left, right, name="multmp")
        elif op == '/':
            return self.builder.fdiv(left, right, name="divtmp")
        elif op == '%':
            return self.builder.call(self.fmod, [left, right], name="modtmp")
        elif op == '//':
            div = self.builder.fdiv(left, right, name="divtmp")
            return self.builder.call(self.floor, [div], name="floortmp")

    def visitRelationalExp(self, ctx):
        left = self.visit(ctx.expression(0))
        right = self.visit(ctx.expression(1))
        op = ctx.getChild(1).getText()
        
        left = self._ensure_double(left)
        right = self._ensure_double(right)
        
        if op == '==':
            return self.builder.fcmp_ordered('==', left, right, name="eqtmp")
        elif op == '~=':
            return self.builder.fcmp_ordered('!=', left, right, name="netmp")
        elif op == '<':
            return self.builder.fcmp_ordered('<', left, right, name="lttmp")
        elif op == '<=':
            return self.builder.fcmp_ordered('<=', left, right, name="letmp")
        elif op == '>':
            return self.builder.fcmp_ordered('>', left, right, name="gttmp")
        elif op == '>=':
            return self.builder.fcmp_ordered('>=', left, right, name="getmp")

    def visitAtomExp(self, ctx):
        return self.visit(ctx.atom())

    def visitAtom(self, ctx):
        if ctx.literal():
            return self.visit(ctx.literal())
        elif ctx.IDENTIFIER():
            name = ctx.IDENTIFIER().getText()
            if ctx.LBRACK():
                # Acesso a array: IDENTIFIER LBRACK expression RBRACK
                index_val = self.visit(ctx.expression())
                
                if name in self.symbol_table:
                    arr_ptr_ptr, element_type = self.symbol_table[name]
                    arr_ptr = self.builder.load(arr_ptr_ptr, name="arr_ptr")
                    
                    # Converte índice
                    if index_val.type == ir.DoubleType():
                        index_val = self.builder.fptosi(index_val, ir.IntType(32))
                        
                    # Subtrai 1 para indexação baseada em 1
                    index_val = self.builder.sub(index_val, ir.Constant(ir.IntType(32), 1), name="idx_adj")
                        
                    # Obtém ponteiro de dados
                    # void* data = minilua_get_data_ptr(arr_ptr)
                    data_ptr = self.builder.call(self.minilua_get_data_ptr, [arr_ptr])
                    
                    # Converte ponteiro de dados para ponteiro do tipo do elemento
                    if element_type is None:
                         # Fallback
                         element_type = ir.DoubleType()
                         
                    typed_data_ptr = self.builder.bitcast(data_ptr, element_type.as_pointer())
                    
                    # GEP
                    elem_ptr = self.builder.gep(typed_data_ptr, [index_val], name="elem_ptr")
                    val = self.builder.load(elem_ptr, name="elem_val")
                    
                    # Lida com valor padrão para strings (substitui NULL por "")
                    if element_type == ir.IntType(8).as_pointer():
                        # Verifica se é null
                        is_null = self.builder.icmp_unsigned('==', val, ir.Constant(val.type, None), name="is_null")
                        
                        # Seleciona
                        empty_str = self._get_empty_string_ptr()
                        val = self.builder.select(is_null, empty_str, val, name="safe_str")
                        
                    return val
                else:
                    print(f"Error: Array {name} not declared.")
                    return ir.Constant(ir.DoubleType(), 0.0)
            else:
                # Acesso a variável
                if name in self.symbol_table:
                    ptr, _ = self.symbol_table[name]
                    return self.builder.load(ptr, name=name)
                else:
                    print(f"Error: Variable {name} not defined")
                    return ir.Constant(ir.DoubleType(), 0.0)
        elif ctx.function_call():
            return self.visit(ctx.function_call())
        elif ctx.LPAREN():
            return self.visit(ctx.expression())

    def visitLiteral(self, ctx):
        if ctx.INT() or ctx.FLOAT():
            return ir.Constant(ir.DoubleType(), float(ctx.getText()))
        elif ctx.TRUE():
            return ir.Constant(ir.IntType(1), 1)
        elif ctx.FALSE():
            return ir.Constant(ir.IntType(1), 0)
        elif ctx.STRING_LITERAL():
            # Remove aspas
            text = ctx.getText()[1:-1]
            # Adiciona terminador nulo
            text += '\0'
            c_str = ir.Constant(ir.ArrayType(ir.IntType(8), len(text)), bytearray(text.encode("utf8")))
            
            # Precisamos retornar um ponteiro para esta string global
            global_str = ir.GlobalVariable(self.module, c_str.type, name=f"str_{self.module.get_unique_name()}")
            global_str.linkage = 'internal'
            global_str.global_constant = True
            global_str.initializer = c_str
            
            return self.builder.bitcast(global_str, ir.IntType(8).as_pointer())
        elif ctx.NIL():
            return ir.Constant(ir.DoubleType(), 0.0) # Trata nil como 0.0 por enquanto

    def visitAndExp(self, ctx):
        # Avalia esquerda
        left_val = self.visit(ctx.expression(0))
        left_bool = self._ensure_bool(left_val)
        
        # Converte esquerda para double AGORA, enquanto estamos no bloco inicial
        left_val_dbl = self._ensure_double(left_val)
        
        start_block = self.builder.block
        func = self.func
        
        right_block = func.append_basic_block(name="and_right")
        merge_block = func.append_basic_block(name="and_merge")
        
        self.builder.cbranch(left_bool, right_block, merge_block)
        
        # Bloco da direita
        self.builder.position_at_end(right_block)
        right_val = self.visit(ctx.expression(1))
        
        # Converte direita para double AGORA, enquanto estamos no bloco da direita
        right_val_dbl = self._ensure_double(right_val)
        
        right_end_block = self.builder.block
        self.builder.branch(merge_block)
        
        # Bloco de fusão
        self.builder.position_at_end(merge_block)
        phi = self.builder.phi(ir.DoubleType(), name="andtmp")
        
        phi.add_incoming(left_val_dbl, start_block)
        phi.add_incoming(right_val_dbl, right_end_block)
        
        return phi

    def visitOrExp(self, ctx):
        # Avalia esquerda
        left_val = self.visit(ctx.expression(0))
        left_bool = self._ensure_bool(left_val)
        
        # Converte esquerda para double AGORA, enquanto estamos no bloco inicial
        left_val_dbl = self._ensure_double(left_val)
        
        start_block = self.builder.block
        func = self.func
        
        right_block = func.append_basic_block(name="or_right")
        merge_block = func.append_basic_block(name="or_merge")
        
        self.builder.cbranch(left_bool, merge_block, right_block)
        
        # Bloco da direita
        self.builder.position_at_end(right_block)
        right_val = self.visit(ctx.expression(1))
        
        # Converte direita para double AGORA, enquanto estamos no bloco da direita
        right_val_dbl = self._ensure_double(right_val)
        
        right_end_block = self.builder.block
        self.builder.branch(merge_block)
        
        # Bloco de fusão
        self.builder.position_at_end(merge_block)
        phi = self.builder.phi(ir.DoubleType(), name="ortmp")
        
        phi.add_incoming(left_val_dbl, start_block)
        phi.add_incoming(right_val_dbl, right_end_block)
        
        return phi

    def visitUnaryExp(self, ctx):
        op = ctx.getChild(0).getText()
        val = self.visit(ctx.expression())
        
        if op == '-':
            val = self._ensure_double(val)
            return self.builder.fneg(val, name="negtmp")
        elif op == 'not':
            val_bool = self._ensure_bool(val)
            res = self.builder.xor(val_bool, ir.Constant(ir.IntType(1), 1), name="nottmp")
            return self.builder.uitofp(res, ir.DoubleType())

    def visitConcatExp(self, ctx):
        left = self.visit(ctx.expression(0))
        right = self.visit(ctx.expression(1))
        
        # Garante que ambos são strings (i8*)
        # Se não, podemos precisar converter (não implementado aqui por simplicidade)
        
        # Calcula comprimentos
        len1 = self.builder.call(self.strlen, [left], name="len1")
        len2 = self.builder.call(self.strlen, [right], name="len2")
        
        # Comprimento total + 1 para terminador nulo
        total_len = self.builder.add(len1, len2, name="total_len")
        total_len_plus_1 = self.builder.add(total_len, ir.Constant(ir.IntType(32), 1))
        
        # Aloca nova string
        new_str_void = self.builder.call(self.malloc, [total_len_plus_1], name="new_str_void")
        new_str = self.builder.bitcast(new_str_void, ir.IntType(8).as_pointer(), name="new_str")
        
        # Copia primeira string
        self.builder.call(self.strcpy, [new_str, left])
        
        # Concatena segunda string
        self.builder.call(self.strcat, [new_str, right])
        
        return new_str

    def visitRelationalExp(self, ctx):
        left = self.visit(ctx.expression(0))
        right = self.visit(ctx.expression(1))
        op = ctx.getChild(1).getText()
        
        left = self._ensure_double(left)
        right = self._ensure_double(right)
        
        if op == '==':
            return self.builder.fcmp_ordered('==', left, right, name="eqtmp")
        elif op == '~=':
            return self.builder.fcmp_ordered('!=', left, right, name="netmp")
        elif op == '<':
            return self.builder.fcmp_ordered('<', left, right, name="lttmp")
        elif op == '<=':
            return self.builder.fcmp_ordered('<=', left, right, name="letmp")
        elif op == '>':
            return self.builder.fcmp_ordered('>', left, right, name="gttmp")
        elif op == '>=':
            return self.builder.fcmp_ordered('>=', left, right, name="getmp")

    def _ensure_double(self, val):
        if val is None:
            return ir.Constant(ir.DoubleType(), 0.0)
        if val.type == ir.IntType(1):
            return self.builder.uitofp(val, ir.DoubleType())
        if val.type == ir.IntType(32):
            return self.builder.sitofp(val, ir.DoubleType())
        return val

    def _ensure_bool(self, val):
        if val.type == ir.DoubleType():
            return self.builder.fcmp_ordered('!=', val, ir.Constant(ir.DoubleType(), 0.0))
        if val.type == ir.IntType(32):
            return self.builder.icmp_signed('!=', val, ir.Constant(ir.IntType(32), 0))
        return val

    def save_ir(self, filename):
        with open(filename, 'w') as f:
            f.write(str(self.module))
