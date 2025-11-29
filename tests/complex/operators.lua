function void main()
    print("=== Teste 2: Operadores e Expressoes ===");

    -- 1. Aritméticos
    local a : number = 10.0;
    local b : number = 3.0;
    
    print("Soma (10+3):", a + b);
    print("Subtracao (10-3):", a - b);
    print("Multiplicacao (10*3):", a * b);
    print("Divisao (10/3):", a / b);
    print("Divisao Inteira (10//3):", a // b); -- Verificando se suportado
    print("Modulo (10%3):", a % b); -- Verificando se suportado
    print("Exponenciacao (10^3):", a ^ b); -- Verificando se suportado

    -- 2. Relacionais
    print("10 > 3 (true/1):", a > b);
    print("10 < 3 (false/0):", a < b);
    print("10 == 10 (true/1):", a == 10.0);
    print("10 ~= 3 (true/1):", a ~= b);
    print("10 >= 10 (true/1):", a >= 10.0);
    print("3 <= 10 (true/1):", b <= a);

    -- 3. Lógicos
    local t : boolean = true;
    local f : boolean = false;

    print("true and false (false/0):", t and f);
    print("true or false (true/1):", t or f);
    print("not true (false/0):", not t);
    print("not false (true/1):", not f);

    -- 4. Precedência
    -- * e / antes de + e -
    print("2 + 3 * 4 (esperado 14):", 2 + 3 * 4);
    print("(2 + 3) * 4 (esperado 20):", (2 + 3) * 4);
    
    -- and antes de or
    print("true or false and false (esperado 1/true):", true or false and false);
    print("(true or false) and false (esperado 0/false):", (true or false) and false);
end
