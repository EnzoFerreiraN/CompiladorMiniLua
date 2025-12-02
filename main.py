import sys
import os
import platform # Necessário para detectar o OS
sys.path.append(os.path.join(os.path.dirname(__file__), 'dist'))

from antlr4 import *
from dist.MiniLuaLexer import MiniLuaLexer
from dist.MiniLuaParser import MiniLuaParser

from antlr4.error.ErrorListener import ErrorListener
from SemanticAnalyzer import SemanticAnalyzer
from CodeGenerator import CodeGenerator

class CustomErrorListener(ErrorListener):
    def syntaxError(self, recognizer, offendingSymbol, line, column, msg, e):
        print(f"Erro sintático na linha {line}: {msg}")
        sys.exit(1)

def main(argv):
    if len(argv) < 2:
        print("Usage: python main.py <input_file>")
        return

    input_stream = FileStream(argv[1], encoding='utf-8')
    lexer = MiniLuaLexer(input_stream)
    stream = CommonTokenStream(lexer)
    parser = MiniLuaParser(stream)
    
    # Remove default error listeners and add custom one
    parser.removeErrorListeners()
    parser.addErrorListener(CustomErrorListener())
    
    tree = parser.program()
    
    # Análise Semântica
    semantic_analyzer = SemanticAnalyzer()
    semantic_analyzer.visit(tree)
    
    # Geração de Código
    print("Gerando código intermediário (LLVM IR)...")
    code_generator = CodeGenerator()
    code_generator.visit(tree)
    
    # Define caminhos de saída
    base_name = os.path.splitext(os.path.basename(argv[1]))[0]
    output_dir_llvm = os.path.join(os.path.dirname(__file__), "codigos_gerados", "llvm")
    
    # Define diretório e extensão baseados no OS
    if platform.system() == "Windows":
        output_dir_exe = os.path.join(os.path.dirname(__file__), "codigos_gerados", "exe")
        exe_ext = ".exe"
    else:
        output_dir_exe = os.path.join(os.path.dirname(__file__), "codigos_gerados", "bin")
        exe_ext = "" # Linux/Unix geralmente não tem extensão

    os.makedirs(output_dir_llvm, exist_ok=True)
    os.makedirs(output_dir_exe, exist_ok=True)
    
    output_ll = os.path.join(output_dir_llvm, f"{base_name}.ll")
    output_exe = os.path.join(output_dir_exe, f"{base_name}{exe_ext}")
    
    code_generator.save_ir(output_ll)
    print(f"Código intermediário gerado em '{output_ll}'.")
    
    compile_ir(output_ll, output_exe)
    
    print("Compilação realizada com sucesso.")

def compile_ir(ir_file, exe_file):
    import subprocess
    import shutil
    import platform

    # 1. Detecção de Ferramentas
    clang = shutil.which("clang")
    gcc = shutil.which("gcc")
    
    if not clang:
        print("\n[ERRO CRÍTICO] 'clang' não encontrado no PATH.")
        print("O Clang é necessário para compilar o código intermediário LLVM.")
        return

    print(f"Compilando '{ir_file}'...")
    
    # Definições de arquivos temporários
    # Garante que o objeto tenha extensão .o
    if exe_file.endswith(".exe"):
        obj_file = exe_file.replace(".exe", ".o")
    else:
        obj_file = exe_file + ".o"

    runtime_c = os.path.join(os.path.dirname(__file__), "runtime.c")
    runtime_o = os.path.join(os.path.dirname(__file__), "runtime.o")
    
    current_os = platform.system()

    try:
        # --- LÓGICA PARA WINDOWS ---
        if current_os == "Windows":
            # Tenta detectar a arquitetura do GCC para alinhar o target do Clang
            target_triple = "i686-pc-windows-gnu" # Padrão MinGW 32-bit
            
            if gcc:
                try:
                    gcc_version = subprocess.check_output([gcc, "-dumpmachine"], text=True).strip()
                    if "x86_64" in gcc_version or "w64" in gcc_version:
                        print(f"Detectado GCC 64-bit ({gcc_version}). Ajustando target para x86_64...")
                        target_triple = "x86_64-pc-windows-gnu"
                except:
                    pass

            # Passo 1: Compilar LLVM IR
            cmd_compile = [clang, "-c", ir_file, "-o", obj_file, f"--target={target_triple}", "-Wno-override-module"]
            subprocess.run(cmd_compile, check=True)
            
            # Passo 1.5: Compilar Runtime
            if os.path.exists(runtime_c):
                print(f"Compilando runtime...")
                compiler_c = gcc if gcc else clang
                cmd_runtime = [compiler_c, "-c", runtime_c, "-o", runtime_o]
                if compiler_c == clang:
                    cmd_runtime.append(f"--target={target_triple}")
                subprocess.run(cmd_runtime, check=True)
            
            # Passo 2: Linkar
            linkers_to_try = []
            if gcc: linkers_to_try.append(gcc)
            linkers_to_try.append(clang)
            
            success = False
            last_error = None
            for linker in linkers_to_try:
                try:
                    print(f"Tentando linkar com {os.path.basename(linker)}...")
                    link_args = [linker, obj_file]
                    if os.path.exists(runtime_o): link_args.append(runtime_o)
                    link_args.extend(["-o", exe_file])
                    if linker == clang and "windows-gnu" in target_triple:
                        link_args.append(f"--target={target_triple}")
                    subprocess.run(link_args, check=True)
                    success = True
                    break
                except subprocess.CalledProcessError as e:
                    last_error = e
            if not success: raise last_error

        # --- LÓGICA PARA LINUX/OUTROS (FALLBACK) ---
        else:
            print(f"Detectado ambiente Linux/Unix ({current_os}). Usando compilação nativa.")
            
            # Passo 1: Compilar LLVM IR (Nativo)
            # -fPIC é importante no Linux para código independente de posição
            # -Wno-override-module ignora se o IR tiver target do Windows hardcoded
            cmd_compile = [clang, "-c", ir_file, "-o", obj_file, "-fPIC", "-Wno-override-module"]
            subprocess.run(cmd_compile, check=True)

            # Passo 1.5: Compilar Runtime
            if os.path.exists(runtime_c):
                print(f"Compilando runtime...")
                # Usa clang ou gcc, o que tiver
                compiler_c = clang if clang else gcc
                cmd_runtime = [compiler_c, "-c", runtime_c, "-o", runtime_o, "-fPIC"]
                subprocess.run(cmd_runtime, check=True)

            # Passo 2: Linkar
            print(f"Linkando executável...")
            linker = clang # Clang é ótimo linker no Linux
            link_args = [linker, obj_file]
            if os.path.exists(runtime_o): link_args.append(runtime_o)
            link_args.extend(["-o", exe_file, "-lm"]) # -lm linka a biblioteca matemática (math.h)
            
            subprocess.run(link_args, check=True)

        print(f"Executável gerado com sucesso: {exe_file}")
        
        # Limpeza
        if os.path.exists(obj_file): os.remove(obj_file)
        if os.path.exists(runtime_o): os.remove(runtime_o)

    except subprocess.CalledProcessError as e:
        print(f"\n[ERRO] Falha no processo de build.")
        print(f"Detalhes: {e}")
        if current_os == 'Windows':
            print("\nDicas para Windows:")
            print("1. Certifique-se de ter o MinGW instalado e no PATH.")

if __name__ == '__main__':
    main(sys.argv)
