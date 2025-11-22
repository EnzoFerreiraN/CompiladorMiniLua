# Compilador MiniLua - Front-end

Este projeto consiste no desenvolvimento do front-end de um compilador para a linguagem **MiniLua**, um subconjunto simplificado da linguagem Lua. O projeto foi desenvolvido como parte da disciplina de Compiladores (2025.2) da UFPI.

## 1. Pré-requisitos e Instalação

Para executar o compilador, é necessário ter o **Python 3.12+** instalado.

As dependências do projeto estão listadas no arquivo `requirements.txt`. Para instalá-las, execute o seguinte comando no terminal:

```bash
pip install -r requirements.txt
```

As principais dependências são:
*   `antlr4-python3-runtime`: Runtime do ANTLR4 para Python.
*   `antlr4-tools`: Ferramentas para geração do parser (caso necessário regenerar).

## 2. Execução

O compilador é executado via linha de comando, recebendo como argumento o caminho para o arquivo de código fonte (`.lua`).

**Sintaxe:**

```bash
python main.py <caminho_do_arquivo>
```

### Exemplos de Execução

#### Caso de Sucesso

Para compilar um arquivo válido, como o cálculo de fatorial:

```bash
python main.py tests/correct/factorial.lua
```

**Saída esperada:**
```text
Compilação realizada com sucesso.
```

#### Caso de Erro (Semântico)

Para testar a detecção de erros semânticos, como o uso de variáveis fora do escopo:

```bash
python main.py tests/errors/erro_escopo.lua
```

**Saída esperada:**
```text
Erro semântico na linha 8: Variável 'f' não declarada.
```

#### Caso de Erro (Léxico)

Para testar a detecção de caracteres inválidos:

```bash
python main.py tests/errors/erro_lexico_caractere.lua
```

**Saída esperada:**
```text
line 4:26 token recognition error at: '@'
...
```

#### Caso de Erro (Sintático)

Para testar a detecção de erros de sintaxe, como falta de `end`:

```bash
python main.py tests/errors/erro_sintatico_missing_end.lua
```

**Saída esperada:**
```text
Erro sintático na linha 6: missing 'end' at '<EOF>'
```

*(A linha e a mensagem exata podem variar dependendo do arquivo de teste)*

## 3. Estrutura do Projeto

*   `main.py`: Ponto de entrada do compilador.
*   `MiniLua.g4`: Arquivo de gramática do ANTLR4.
*   `SemanticAnalyzer.py`: Implementação do analisador semântico (Visitor).
*   `SymbolTable.py`: Implementação da tabela de símbolos.
*   `dist/`: Contém os arquivos gerados automaticamente pelo ANTLR4 (Lexer, Parser, Visitor).
*   `tests/`: Contém casos de teste.
    *   `correct/`: Testes com código válido (fatorial, arrays, controle de fluxo).
    *   `errors/`: Testes projetados para falhar (erros léxicos, sintáticos e semânticos).
*   `docs/`: Documentação do projeto.

## 4. Atualizações da Especificação

Durante o desenvolvimento do front-end, algumas definições foram refinadas em relação à especificação inicial:

*   **Bloco `do ... end`**: Foi adicionado suporte explícito para blocos de escopo `do ... end`, permitindo a criação de escopos locais arbitrários.
*   **Função `print`**: Definida como uma função nativa que aceita múltiplos argumentos (na implementação atual do analisador semântico, a validação de tipos para `print` é permissiva para facilitar o uso).
*   **Tipos Numéricos**: A linguagem suporta `integer` e `number` (float), com coerção automática de `integer` para `number` em operações mistas.
