class Symbol:
    """
    Representa um símbolo na tabela de símbolos (variável, constante, etc.).
    """
    def __init__(self, name, type_name, category):
        self.name = name
        self.type = type_name
        self.category = category  # 'var', 'const', 'function', 'param'

class FunctionSymbol(Symbol):
    """
    Representa uma função, armazenando também seus parâmetros.
    """
    def __init__(self, name, return_type, params):
        super().__init__(name, return_type, 'function')
        self.params = params  # Lista de objetos Symbol para os parâmetros

class SymbolTable:
    """
    Gerencia os escopos e símbolos do programa.
    Funciona como uma pilha de escopos (dicionários).
    """
    def __init__(self):
        self.scopes = [{}]  # Pilha de escopos, inicia com o escopo global

    def enter_scope(self):
        """Cria um novo escopo e o empilha."""
        self.scopes.append({})

    def exit_scope(self):
        """Remove o escopo atual (topo da pilha)."""
        self.scopes.pop()

    def define(self, symbol):
        """
        Define um símbolo no escopo atual.
        Retorna False se o símbolo já existir no escopo atual.
        """
        scope = self.scopes[-1]
        if symbol.name in scope:
            return False
        scope[symbol.name] = symbol
        return True

    def resolve(self, name):
        """
        Busca um símbolo pelo nome, começando do escopo atual até o global.
        Retorna None se não encontrar.
        """
        for scope in reversed(self.scopes):
            if name in scope:
                return scope[name]
        return None
