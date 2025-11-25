class Symbol:
    """Representa um identificador (variável, constante, etc) e seus metadados."""
    def __init__(self, name, type_name, category):
        self.name = name
        self.type = type_name
        self.category = category  # 'var', 'const', 'function', 'param'

class FunctionSymbol(Symbol):
    """Representa uma função e sua lista de parâmetros."""
    def __init__(self, name, return_type, params):
        super().__init__(name, return_type, 'function')
        self.params = params  # Lista de objetos Symbol para os parâmetros

class SymbolTable:
    """Gerencia escopos aninhados usando uma pilha de dicionários."""
    def __init__(self):
        self.scopes = [{}]  # Pilha de escopos, inicia com o escopo global

    def enter_scope(self):
        """Empilha um novo escopo vazio."""
        self.scopes.append({})

    def exit_scope(self):
        """Desempilha o escopo atual."""
        self.scopes.pop()

    def define(self, symbol):
        """Registra um símbolo no escopo atual. Retorna False se já existir."""
        scope = self.scopes[-1]
        if symbol.name in scope:
            return False
        scope[symbol.name] = symbol
        return True

    def resolve(self, name):
        """Busca um símbolo do escopo atual até o global."""
        for scope in reversed(self.scopes):
            if name in scope:
                return scope[name]
        return None
