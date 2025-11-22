grammar MiniLua;

// --- Regras do Parser ---

// Estrutura do Programa (Seção 1 e 7.7)
// Um programa consiste em declarações de funções seguidas pela função main.
program
    : function_decl* main_function EOF
    ;

// Função Principal (Seção 7.7)
// Ponto de entrada, tipo void, sem parâmetros.
main_function
    : FUNCTION VOID MAIN LPAREN RPAREN block END
    ;

// Declaração de Funções (Seção 5)
// Funções têm tipo de retorno, nome, parâmetros e um bloco de código.
function_decl
    : FUNCTION return_type IDENTIFIER LPAREN param_list? RPAREN block END
    ;

return_type
    : type
    | VOID
    ;

param_list
    : param (COMMA param)*
    ;

param
    : IDENTIFIER COLON type
    ;

// Tipos (Seção 2)
// Tipos básicos e arrays.
type
    : TYPE_NUMBER
    | TYPE_INTEGER
    | TYPE_BOOLEAN
    | TYPE_STRING
    | TYPE_ARRAY LT type GT
    ;

// Bloco de Comandos (Seção 3.4)
// Escopo léxico, contém declarações e comandos.
block
    : statement*
    ;

statement
    : var_decl
    | const_decl
    | command
    ;

// Declaração de Variáveis (Seção 3.2)
var_decl
    : LOCAL IDENTIFIER COLON type (ASSIGN expression)? SEMI
    ;

// Declaração de Constantes (Seção 3.3)
const_decl
    : CONST IDENTIFIER COLON type ASSIGN expression SEMI
    ;

// Comandos (Seção 7)
command
    : assignment
    | function_call_stmt
    | if_stmt
    | while_stmt
    | for_stmt
    | return_stmt
    | do_stmt
    ;

// Atribuição (Seção 7.1 e 7.2)
assignment
    : IDENTIFIER ASSIGN expression SEMI
    | IDENTIFIER LBRACK expression RBRACK ASSIGN expression SEMI
    ;

function_call_stmt
    : function_call SEMI
    ;

// Estruturas de Controle (Seção 7.3, 7.4, 7.5)
if_stmt
    : IF expression THEN block
      (ELSEIF expression THEN block)*
      (ELSE block)?
      END
    ;

while_stmt
    : WHILE expression DO block END
    ;

do_stmt
    : DO block END
    ;

for_stmt
    : FOR IDENTIFIER ASSIGN expression COMMA expression (COMMA expression)? DO
      block
      END
    ;

// Retorno (Seção 7.6)
return_stmt
    : RETURN expression? SEMI
    ;

// --- Expressões e Operadores ---
// Baseado na tabela de precedência do documento (Seção 4.6)
// 1. ^ (direita)
// 2. - (unário), not (unário)
// 3. *, /, //, %
// 4. +, -
// 5. .. (concatenação, direita)
// 6. ==, ~=, <, <=, >, >=
// 7. and
// 8. or

expression
    : atom                                                      # AtomExp
    | expression POWER expression                               # PowerExp
    | (MINUS | NOT) expression                                  # UnaryExp
    | expression (MULT | DIV | IDIV | MOD) expression           # MultiplicativeExp
    | expression (PLUS | MINUS) expression                      # AdditiveExp
    | expression CONCAT expression                              # ConcatExp
    | expression (EQ | NEQ | LT | LE | GT | GE) expression      # RelationalExp
    | expression AND expression                                 # AndExp
    | expression OR expression                                  # OrExp
    ;

atom
    : IDENTIFIER
    | literal
    | function_call
    | IDENTIFIER LBRACK expression RBRACK
    | LPAREN expression RPAREN
    ;

function_call
    : IDENTIFIER LPAREN arg_list? RPAREN
    ;

arg_list
    : expression (COMMA expression)*
    ;

literal
    : INT
    | FLOAT
    | STRING_LITERAL
    | TRUE
    | FALSE
    | NIL
    ;

// --- Regras Léxicas (Tokens) ---

FUNCTION : 'function';
VOID : 'void';
MAIN : 'main';
END : 'end';
TYPE_NUMBER : 'number';
TYPE_INTEGER : 'integer';
TYPE_BOOLEAN : 'boolean';
TYPE_STRING : 'string';
TYPE_ARRAY : 'array';
LOCAL : 'local';
CONST : 'const';
IF : 'if';
THEN : 'then';
ELSEIF : 'elseif';
ELSE : 'else';
WHILE : 'while';
DO : 'do';
FOR : 'for';
RETURN : 'return';
NIL : 'nil';
TRUE : 'true';
FALSE : 'false';
AND : 'and';
OR : 'or';
NOT : 'not';

LPAREN : '(';
RPAREN : ')';
LBRACK : '[';
RBRACK : ']';
COMMA : ',';
COLON : ':';
SEMI : ';';
ASSIGN : '=';
LT : '<';
GT : '>';
LE : '<=';
GE : '>=';
EQ : '==';
NEQ : '~=';
PLUS : '+';
MINUS : '-';
MULT : '*';
DIV : '/';
IDIV : '//';
MOD : '%';
POWER : '^';
CONCAT : '..';

INT : [0-9]+;
FLOAT : [0-9]+ '.' [0-9]+;
STRING_LITERAL : '"' .*? '"';
IDENTIFIER : [a-zA-Z_] [a-zA-Z0-9_]*;

WS : [ \t\r\n]+ -> skip;
COMMENT : '--' .*? ('\r'? '\n' | EOF) -> skip;
BLOCK_COMMENT : '--[[' .*? ']]' -> skip;
