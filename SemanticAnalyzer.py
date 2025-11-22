import sys
from dist.MiniLuaVisitor import MiniLuaVisitor
from dist.MiniLuaParser import MiniLuaParser
from SymbolTable import SymbolTable, Symbol, FunctionSymbol

class SemanticAnalyzer(MiniLuaVisitor):
    """
    Realiza a análise semântica percorrendo a árvore sintática (Visitor).
    Verifica tipos, escopos, declarações e regras da linguagem MiniLua.
    """
    def __init__(self):
        self.symbol_table = SymbolTable()
        self.current_function = None # Rastreia a função atual para verificar retornos

    def error(self, msg, ctx):
        """Reporta erro semântico e encerra a execução."""
        line = ctx.start.line
        print(f"Erro semântico na linha {line}: {msg}")
        sys.exit(1)

    def check_type_compatibility(self, target, source):
        """
        Verifica se o tipo 'source' é compatível com o tipo 'target'.
        Permite coerção de integer para number.
        """
        if target == source:
            return True
        if target == 'number' and source == 'integer':
            return True
        if target == 'void' and source is None:
            return True
        return False

    def visitProgram(self, ctx):
        # Define funções nativas (built-ins) no escopo global
        self.symbol_table.define(FunctionSymbol("print", "void", [])) # Print aceita argumentos variáveis na prática
        self.symbol_table.define(FunctionSymbol("inputNumber", "number", []))
        self.symbol_table.define(FunctionSymbol("inputString", "string", []))
        self.symbol_table.define(FunctionSymbol("len", "integer", [Symbol("s", "string", "param")]))
        self.symbol_table.define(FunctionSymbol("arrayLength", "integer", [])) # Special handling for generic array param
        
        return self.visitChildren(ctx)

    def visitFunction_decl(self, ctx):
        # Coleta informações da função
        name = ctx.IDENTIFIER().getText()
        return_type = self.visit(ctx.return_type())
        
        params = []
        if ctx.param_list():
            for param_ctx in ctx.param_list().param():
                p_name = param_ctx.IDENTIFIER().getText()
                p_type = self.visit(param_ctx.type_())
                params.append(Symbol(p_name, p_type, 'param'))

        # Define a função no escopo atual (antes de entrar no corpo para permitir recursão)
        func_symbol = FunctionSymbol(name, return_type, params)
        if not self.symbol_table.define(func_symbol):
            self.error(f"Função '{name}' já declarada.", ctx)

        self.current_function = func_symbol
        self.symbol_table.enter_scope() # Novo escopo para parâmetros e corpo da função
        
        # Define parâmetros no escopo da função
        for param in params:
            if not self.symbol_table.define(param):
                self.error(f"Parâmetro '{param.name}' duplicado.", ctx)

        self.visit(ctx.block())
        
        self.symbol_table.exit_scope()
        self.current_function = None
        return None

    def visitMain_function(self, ctx):
        name = "main"
        func_symbol = FunctionSymbol(name, "void", [])
        if not self.symbol_table.define(func_symbol):
             self.error(f"Função '{name}' já declarada.", ctx)
        
        self.current_function = func_symbol
        self.symbol_table.enter_scope()
        self.visit(ctx.block())
        self.symbol_table.exit_scope()
        self.current_function = None
        return None

    def visitVar_decl(self, ctx):
        name = ctx.IDENTIFIER().getText()
        type_name = self.visit(ctx.type_())
        
        # Verifica se variável já existe no escopo atual
        if not self.symbol_table.define(Symbol(name, type_name, 'var')):
            self.error(f"Variável '{name}' já declarada neste escopo.", ctx)
            
        # Verifica tipo da inicialização, se houver
        if ctx.expression():
            expr_type = self.visit(ctx.expression())
            if not self.check_type_compatibility(type_name, expr_type):
                self.error(f"Tipo incompatível na inicialização de '{name}'. Esperado {type_name}, encontrado {expr_type}.", ctx)

    def visitConst_decl(self, ctx):
        name = ctx.IDENTIFIER().getText()
        type_name = self.visit(ctx.type_())
        
        if not self.symbol_table.define(Symbol(name, type_name, 'const')):
            self.error(f"Constante '{name}' já declarada neste escopo.", ctx)
            
        expr_type = self.visit(ctx.expression())
        if not self.check_type_compatibility(type_name, expr_type):
            self.error(f"Tipo incompatível na inicialização de '{name}'. Esperado {type_name}, encontrado {expr_type}.", ctx)

    def visitAssignment(self, ctx):
        name = ctx.IDENTIFIER().getText()
        symbol = self.symbol_table.resolve(name)
        if not symbol:
            self.error(f"Variável '{name}' não declarada.", ctx)
        
        if symbol.category == 'const':
            self.error(f"Não é possível atribuir valor à constante '{name}'.", ctx)

        if ctx.LBRACK(): # Atribuição em Array
            if not symbol.type.startswith('array'):
                self.error(f"Variável '{name}' não é um array.", ctx)
            
            index_type = self.visit(ctx.expression(0))
            if index_type != 'integer':
                self.error(f"Índice de array deve ser inteiro. Encontrado {index_type}.", ctx)
            
            value_type = self.visit(ctx.expression(1))
            element_type = symbol.type[6:-1] # extrai T de array<T>
            if not self.check_type_compatibility(element_type, value_type):
                self.error(f"Tipo incompatível na atribuição ao array '{name}'. Esperado {element_type}, encontrado {value_type}.", ctx)
        else: # Atribuição simples
            expr_type = self.visit(ctx.expression(0))
            if not self.check_type_compatibility(symbol.type, expr_type):
                 self.error(f"Tipo incompatível na atribuição para '{name}'. Esperado {symbol.type}, encontrado {expr_type}.", ctx)

    def visitIf_stmt(self, ctx):
        # Verifica se todas as condições são booleanas
        for expr in ctx.expression():
            t = self.visit(expr)
            if t != 'boolean':
                self.error(f"Condição do 'if/elseif' deve ser boolean. Encontrado {t}.", ctx)
        self.visitChildren(ctx)

    def visitWhile_stmt(self, ctx):
        t = self.visit(ctx.expression())
        if t != 'boolean':
            self.error(f"Condição do 'while' deve ser boolean. Encontrado {t}.", ctx)
        self.visit(ctx.block())

    def visitDo_stmt(self, ctx):
        # Cria novo escopo para o bloco do...end
        self.symbol_table.enter_scope()
        self.visit(ctx.block())
        self.symbol_table.exit_scope()

    def visitFor_stmt(self, ctx):
        # for IDENTIFIER = expr, expr [, expr] do ...
        name = ctx.IDENTIFIER().getText()
        
        # Variável do laço for é local ao laço
        self.symbol_table.enter_scope()
        self.symbol_table.define(Symbol(name, 'integer', 'var'))
        
        # Verifica expressões de controle (início, fim, passo)
        t1 = self.visit(ctx.expression(0))
        t2 = self.visit(ctx.expression(1))
        if t1 != 'integer' or t2 != 'integer':
             self.error("Limites do laço 'for' devem ser inteiros.", ctx)
             
        if len(ctx.expression()) > 2:
            t3 = self.visit(ctx.expression(2))
            if t3 != 'integer':
                self.error("Passo do laço 'for' deve ser inteiro.", ctx)
                
        self.visit(ctx.block())
        self.symbol_table.exit_scope()

    def visitReturn_stmt(self, ctx):
        if not self.current_function:
            self.error("Comando 'return' fora de função.", ctx)
            
        expected_type = self.current_function.type
        if ctx.expression():
            actual_type = self.visit(ctx.expression())
            if expected_type == 'void':
                self.error("Função void não deve retornar valor.", ctx)
            if not self.check_type_compatibility(expected_type, actual_type):
                self.error(f"Tipo de retorno incompatível. Esperado {expected_type}, encontrado {actual_type}.", ctx)
        else:
            if expected_type != 'void':
                self.error(f"Função deve retornar um valor do tipo {expected_type}.", ctx)

    # --- Expressões ---

    def visitAtomExp(self, ctx):
        return self.visit(ctx.atom())

    def visitPowerExp(self, ctx):
        t1 = self.visit(ctx.expression(0))
        t2 = self.visit(ctx.expression(1))
        if t1 in ['number', 'integer'] and t2 in ['number', 'integer']:
            return 'number'
        self.error(f"Operação de potência inválida para tipos {t1} e {t2}.", ctx)

    def visitUnaryExp(self, ctx):
        t = self.visit(ctx.expression())
        op = ctx.getChild(0).getText()
        if op == '-':
            if t in ['number', 'integer']:
                return t
            self.error(f"Operador unário '-' inválido para tipo {t}.", ctx)
        elif op == 'not':
            if t == 'boolean':
                return 'boolean'
            self.error(f"Operador 'not' inválido para tipo {t}.", ctx)

    def visitMultiplicativeExp(self, ctx):
        t1 = self.visit(ctx.expression(0))
        t2 = self.visit(ctx.expression(1))
        op = ctx.getChild(1).getText()
        
        if t1 not in ['number', 'integer'] or t2 not in ['number', 'integer']:
             self.error(f"Operação aritmética inválida para tipos {t1} e {t2}.", ctx)
             
        if op == '/':
            return 'number'
        if op == '//' or op == '%':
            if t1 == 'integer' and t2 == 'integer':
                return 'integer'
            return 'integer' 
        
        # *
        if t1 == 'number' or t2 == 'number':
            return 'number'
        return 'integer'

    def visitAdditiveExp(self, ctx):
        t1 = self.visit(ctx.expression(0))
        t2 = self.visit(ctx.expression(1))
        if t1 not in ['number', 'integer'] or t2 not in ['number', 'integer']:
             self.error(f"Operação aritmética inválida para tipos {t1} e {t2}.", ctx)
        
        if t1 == 'number' or t2 == 'number':
            return 'number'
        return 'integer'

    def visitConcatExp(self, ctx):
        t1 = self.visit(ctx.expression(0))
        t2 = self.visit(ctx.expression(1))
        if t1 == 'string' and t2 == 'string':
            return 'string'
        self.error(f"Concatenação requer strings. Encontrado {t1} e {t2}.", ctx)

    def visitRelationalExp(self, ctx):
        t1 = self.visit(ctx.expression(0))
        t2 = self.visit(ctx.expression(1))
        # Permite comparação entre number/integer
        if (t1 in ['number', 'integer'] and t2 in ['number', 'integer']) or (t1 == t2):
            return 'boolean'
        self.error(f"Comparação inválida entre {t1} e {t2}.", ctx)

    def visitAndExp(self, ctx):
        t1 = self.visit(ctx.expression(0))
        t2 = self.visit(ctx.expression(1))
        if t1 == 'boolean' and t2 == 'boolean':
            return 'boolean'
        self.error(f"Operador 'and' requer booleanos. Encontrado {t1} e {t2}.", ctx)

    def visitOrExp(self, ctx):
        t1 = self.visit(ctx.expression(0))
        t2 = self.visit(ctx.expression(1))
        if t1 == 'boolean' and t2 == 'boolean':
            return 'boolean'
        self.error(f"Operador 'or' requer booleanos. Encontrado {t1} e {t2}.", ctx)

    def visitAtom(self, ctx):
        if ctx.IDENTIFIER():
            name = ctx.IDENTIFIER().getText()
            if ctx.LBRACK(): # Acesso a Array
                symbol = self.symbol_table.resolve(name)
                if not symbol:
                    self.error(f"Variável '{name}' não declarada.", ctx)
                if not symbol.type.startswith('array'):
                    self.error(f"Variável '{name}' não é um array.", ctx)
                
                index_type = self.visit(ctx.expression())
                if index_type != 'integer':
                    self.error(f"Índice de array deve ser inteiro. Encontrado {index_type}.", ctx)
                
                return symbol.type[6:-1] # Retorna T de array<T>
            
            elif ctx.LPAREN(): # Chamada de função (tratada em function_call, mas pode aparecer aqui dependendo da gramática)
                # Na gramática atual, function_call é uma regra separada em atom.
                # Se cair aqui com LPAREN, seria algo como IDENTIFIER LPAREN ... RPAREN que o parser jogou para cá?
                # Na verdade, a regra atom tem: IDENTIFIER | function_call | ...
                # function_call começa com IDENTIFIER. O parser resolve isso.
                # Se entrou aqui apenas com IDENTIFIER, é variável.
                symbol = self.symbol_table.resolve(name)
                if not symbol:
                    self.error(f"Identificador '{name}' não encontrado.", ctx)
                return symbol.type
            else:
                # Identificador simples (variável)
                symbol = self.symbol_table.resolve(name)
                if not symbol:
                    self.error(f"Identificador '{name}' não encontrado.", ctx)
                return symbol.type
        
        if ctx.literal():
            return self.visit(ctx.literal())
            
        if ctx.function_call():
            return self.visit(ctx.function_call())
            
        if ctx.LPAREN():
            return self.visit(ctx.expression())

    def visitFunction_call(self, ctx):
        name = ctx.IDENTIFIER().getText()
        symbol = self.symbol_table.resolve(name)
        if not symbol or symbol.category != 'function':
            self.error(f"Função '{name}' não declarada.", ctx)
            
        # Verifica argumentos
        args = []
        if ctx.arg_list():
            for expr in ctx.arg_list().expression():
                args.append(self.visit(expr))
        
        if name == 'print':
            return 'void' # Print aceita qualquer argumento
            
        if name == 'arrayLength':
            if len(args) != 1:
                self.error(f"Número incorreto de argumentos para 'arrayLength'. Esperado 1, encontrado {len(args)}.", ctx)
            if not args[0].startswith('array'):
                 self.error(f"Argumento para 'arrayLength' deve ser um array. Encontrado {args[0]}.", ctx)
            return 'integer'

        if len(args) != len(symbol.params):
            self.error(f"Número incorreto de argumentos para '{name}'. Esperado {len(symbol.params)}, encontrado {len(args)}.", ctx)
            
        for i, (arg_type, param) in enumerate(zip(args, symbol.params)):
            if not self.check_type_compatibility(param.type, arg_type):
                self.error(f"Tipo de argumento {i+1} incompatível para '{name}'. Esperado {param.type}, encontrado {arg_type}.", ctx)
                
        return symbol.type

    def visitLiteral(self, ctx):
        if ctx.INT(): return 'integer'
        if ctx.FLOAT(): return 'number'
        if ctx.STRING_LITERAL(): return 'string'
        if ctx.TRUE() or ctx.FALSE(): return 'boolean'
        if ctx.NIL(): return 'nil'
        return 'void'

    def visitType(self, ctx):
        return ctx.getText()
        
    def visitReturn_type(self, ctx):
        return ctx.getText()
