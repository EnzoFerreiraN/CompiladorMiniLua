# Compilador MiniLua

Este projeto consiste no desenvolvimento de um compilador completo (Front-end e Back-end) para a linguagem **MiniLua**, um subconjunto simplificado da linguagem Lua. O compilador traduz código MiniLua para **LLVM IR** e, em seguida, gera um executável nativo. O projeto foi desenvolvido como parte da disciplina de Compiladores (2025.2) da UFPI.

> **Nota:** Este compilador foi desenvolvido para funcionar exclusivamente em ambiente **Windows**.

## 1. Pré-requisitos e Instalação

### Software Necessário

1.  **Python 3.12+**
2.  **LLVM (Clang)**: Necessário para compilar o código intermediário.
    *   Baixe e instale o LLVM (certifique-se de adicionar ao PATH): [LLVM Releases](https://github.com/llvm/llvm-project/releases)
3.  **MinGW (GCC)**:
    *   Necessário para linkagem eficiente e bibliotecas padrão.
    *   Recomendado: [MinGW-w64](https://www.mingw-w64.org/) ou via gerenciadores como Chocolatey (`choco install mingw`).

### Dependências Python

As dependências do projeto estão listadas no arquivo `requirements.txt`. Para instalá-las, execute:

```bash
pip install -r requirements.txt
```

As principais dependências são:
*   `antlr4-python3-runtime`: Runtime do ANTLR4 para Python.
*   `llvmlite`: Binding Python para geração de LLVM IR.
*   `antlr4-tools`: Ferramentas para geração do parser.

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
Gerando código intermediário (LLVM IR)...
Código intermediário gerado em '...\codigos_gerados\llvm\factorial.ll'.
Compilando '...\codigos_gerados\llvm\factorial.ll'...
Compilando runtime...
Tentando linkar com gcc.EXE...
Executável gerado com sucesso: ...\codigos_gerados\exe\factorial.exe
Compilação realizada com sucesso.
```

O executável gerado pode ser rodado diretamente:
```bash
.\codigos_gerados\exe\factorial.exe
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

*   `main.py`: Ponto de entrada. Gerencia o pipeline (Lexer -> Parser -> Semântico -> CodeGen -> Compilação).
*   `CodeGenerator.py`: Visitor que percorre a AST e gera código **LLVM IR** usando `llvmlite`.
*   `runtime.c`: Biblioteca de tempo de execução em C (gerenciamento de arrays dinâmicos, I/O).
*   `MiniLua.g4`: Arquivo de gramática do ANTLR4.
*   `SemanticAnalyzer.py`: Analisador semântico (Visitor).
*   `SymbolTable.py`: Tabela de símbolos.
*   `codigos_gerados/`: Pasta de saída.
    *   `llvm/`: Arquivos `.ll` (código intermediário).
    *   `exe/`: Executáveis finais.
*   `dist/`: Arquivos gerados pelo ANTLR4.
*   `tests/`: Casos de teste.
*   `docs/`: Documentação.

## 4. Implementação do Back-end

O back-end foi implementado utilizando **LLVM IR** como representação intermediária.

*   **Geração de Código**: O `CodeGenerator.py` traduz as construções da linguagem (loops, condicionais, funções, expressões) para instruções LLVM.
*   **Runtime em C**: Arrays dinâmicos e funções de sistema são gerenciados por um runtime escrito em C (`runtime.c`), que é compilado e linkado junto com o código gerado.
*   **Pipeline de Build**:
    1.  Geração do arquivo `.ll` (LLVM IR).
    2.  Compilação do `.ll` para objeto `.o` usando `clang`.
    3.  Compilação do `runtime.c` para `runtime.o`.
    4.  Linkagem dos objetos para gerar o `.exe` final (usando `gcc` ou `clang`).

## 5. Atualizações da Especificação

Durante o desenvolvimento do front-end, algumas definições foram refinadas em relação à especificação inicial:

*   **Bloco `do ... end`**: Foi adicionado suporte explícito para blocos de escopo `do ... end`, permitindo a criação de escopos locais arbitrários.
*   **Função `print`**: Definida como uma função nativa que aceita múltiplos argumentos (na implementação atual do analisador semântico, a validação de tipos para `print` é permissiva para facilitar o uso).
*   **Tipos Numéricos**: A linguagem suporta `integer` e `number` (float), com coerção automática de `integer` para `number` em operações mistas.
