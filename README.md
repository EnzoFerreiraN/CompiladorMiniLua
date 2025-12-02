# Compilador MiniLua

Este projeto consiste no desenvolvimento de um compilador completo (Front-end e Back-end) para a linguagem **MiniLua**, um subconjunto simplificado da linguagem Lua. O compilador traduz código MiniLua para **LLVM IR** e, em seguida, utiliza o Clang para gerar um executável nativo. O projeto foi desenvolvido como parte da disciplina de Compiladores (2025.2) da UFPI.

## Funcionalidades Implementadas

O compilador suporta uma ampla gama de recursos da linguagem:

*   **Tipos de Dados:** `integer`, `number` (float), `string`, `boolean` e `nil`.
*   **Estruturas de Controle:** `if-then-elseif-else`, `while`, `for`, `do-end`.
*   **Funções:** Declaração de funções com parâmetros tipados e retorno de valores.
*   **Arrays:**
    *   Arrays tipados (`array<integer>`, `array<string>`, etc.).
    *   Indexação baseada em 1 (padrão Lua).
    *   Verificação de limites em tempo de execução (Runtime Bounds Checking).
    *   Redimensionamento dinâmico.
*   **Operadores:**
    *   Aritméticos: `+`, `-`, `*`, `/`, `//` (divisão inteira), `%` (módulo), `^` (potência).
    *   Relacionais: `==`, `~=`, `<`, `<=`, `>`, `>=`.
    *   Lógicos: `and`, `or`, `not`.
    *   Concatenação de strings: `..`.
*   **Entrada e Saída:**
    *   `print()`: Suporte a múltiplos argumentos e formatação inteligente (inteiros vs floats).
    *   `inputNumber()` e `inputString()`.
    *   `len()` e `arrayLength()`.
*   **Análise Semântica:** Verificação de tipos, escopo de variáveis, declaração prévia, e consistência de chamadas de função.

## 🛠️ Pré-requisitos

### Software Necessário

1.  **Python 3.12+**
2.  **LLVM (Clang)**: Essencial para compilar o código intermediário (`.ll`) para código de máquina.
    *   **Windows:** [LLVM Releases](https://github.com/llvm/llvm-project/releases) (Adicione ao PATH).
    *   **Linux:** `sudo apt install clang` (ou equivalente).
3.  **GCC (Opcional/Recomendado no Windows)**:
    *   Útil para fornecer bibliotecas padrão e linkagem no Windows (MinGW-w64).

### Dependências Python

Instale as dependências listadas no `requirements.txt`:

```bash
pip install -r requirements.txt
```

Principais bibliotecas: `antlr4-python3-runtime`, `llvmlite`.

## 💻 Como Executar

O compilador detecta automaticamente o sistema operacional e ajusta o processo de build.

**Sintaxe:**

```bash
python main.py <caminho_do_arquivo.lua>
```

### Exemplos de Execução

Para atender aos requisitos do projeto, abaixo estão exemplos de execução para casos de sucesso e diferentes tipos de erro.

#### 1. Caso de Sucesso

Compilando um código válido (ex: cálculo de fatorial):

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

**Executando o binário gerado:**

*   **Windows:**
    ```powershell
    .\codigos_gerados\exe\factorial.exe
    ```
*   **Linux:**
    ```bash
    ./codigos_gerados/bin/factorial
    ```

#### 2. Casos de Erro

O compilador detecta e reporta erros léxicos, sintáticos e semânticos.

**a) Erro Léxico (Caractere Inválido)**
Tentativa de usar um caractere não reconhecido pela linguagem (ex: `@`).

```bash
python main.py tests/errors/erro_lexico_caractere.lua
```
**Saída:**
```text
line 4:26 token recognition error at: '@'
...
```

**b) Erro Sintático (Estrutura Malformada)**
Código com estrutura gramatical incorreta (ex: faltando `end`).

```bash
python main.py tests/errors/erro_sintatico_missing_end.lua
```
**Saída:**
```text
Erro sintático na linha 15: missing 'end' at '<EOF>'
```

**c) Erro Semântico (Variável não declarada)**
Uso de uma variável que não foi definida anteriormente.

```bash
python main.py tests/errors/erro_escopo.lua
```
**Saída:**
```text
Erro semântico na linha 8: Variável 'f' não declarada.
```

## 🧪 Testes

O projeto inclui uma bateria de testes abrangente para garantir a corretude do compilador.

### Executar Todos os Testes

Utilize o script de automação para rodar todos os casos de teste (corretos e complexos):

```bash
python run_tests_batch.py
```

Este script irá:
1.  Compilar cada arquivo `.lua` nas pastas de teste.
2.  Executar o binário gerado.
3.  Comparar a saída ou verificar se houve erro de execução (quando esperado).
4.  Gerar um relatório final de sucesso/falha.

### Estrutura de Testes

*   `tests/correct/`: Testes de funcionalidades básicas (controle de fluxo, operadores, recursão).
*   `tests/complex/`: Testes avançados (arrays dinâmicos, escopos aninhados, coerção de tipos).
*   `tests/errors/`: Casos que devem falhar na análise léxica, sintática ou semântica.

## 📂 Estrutura do Projeto

```
.
├── CodeGenerator.py      # Geração de código LLVM IR
├── SemanticAnalyzer.py   # Análise semântica (tipos, escopo)
├── SymbolTable.py        # Tabela de símbolos
├── main.py               # Ponto de entrada e orquestrador de build
├── runtime.c             # Biblioteca de suporte (arrays dinâmicos, etc.)
├── MiniLua.g4            # Gramática ANTLR4
├── run_tests_batch.py    # Script de automação de testes
├── codigos_gerados/      # Saída da compilação (.ll e executáveis)
└── tests/                # Casos de teste
```

## 🔧 Detalhes Técnicos

*   **Runtime Híbrido:** Parte das funcionalidades (como gerenciamento de memória de arrays) é implementada em C (`runtime.c`) e linkada estaticamente. Outras, como a impressão de números, são geradas diretamente em LLVM IR para maior eficiência.
*   **Tratamento de Erros:** O compilador implementa recuperação de erros sintáticos customizada e validações semânticas rigorosas.
*   **Cross-Platform:** O script `main.py` suporta compilação tanto em ambientes Windows (via MinGW/Clang) quanto Linux (via Clang nativo).

> **⚠️ Importante:** Os arquivos LLVM IR gerados que utilizam arrays dinâmicos dependem de funções definidas em `runtime.c`. Portanto, eles **devem** ser compilados através do script `main.py`, que gerencia automaticamente a compilação do runtime e a linkagem correta. Tentar compilar apenas o arquivo `.ll` manualmente sem linkar o objeto do runtime resultará em erros de "undefined reference". Testes que não utilizam de arrays devem funcionar normalmente.

---
**Disciplina:** Compiladores - UFPI
