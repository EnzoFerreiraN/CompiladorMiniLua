import sys
import os
sys.path.append(os.path.join(os.path.dirname(__file__), 'dist'))

from antlr4 import *
from dist.MiniLuaLexer import MiniLuaLexer
from dist.MiniLuaParser import MiniLuaParser

from antlr4.error.ErrorListener import ErrorListener
from SemanticAnalyzer import SemanticAnalyzer

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
    
    # Semantic Analysis
    semantic_analyzer = SemanticAnalyzer()
    semantic_analyzer.visit(tree)
    
    print("Compilação realizada com sucesso.")

if __name__ == '__main__':
    main(sys.argv)
