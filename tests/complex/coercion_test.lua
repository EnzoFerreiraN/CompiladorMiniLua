function void printAsNumber(val: number)
    print("  [Func] Recebido como number:", val);
end

function void main()
    print("=== Teste de Coercao Integer -> Number ===");

    -- 1. Atribuicao Direta
    print("\n1. Atribuicao Direta:");
    local i : integer = 42;
    local n : number;
    
    n = i; -- Coercao implicita
    print("Integer original:", i);
    print("Number apos atribuicao:", n);
    
    if n == 42.0 then
        print("Verificacao: n == 42.0 (OK)");
    else
        print("Verificacao: n != 42.0 (FALHA)");
    end

    -- 2. Operacoes Mistas
    print("\n2. Operacoes Mistas:");
    local a : integer = 10;
    local b : number = 2.5;
    
    local res_add : number = a + b; -- 10 + 2.5 = 12.5
    print("10 (int) + 2.5 (num) =", res_add);
    
    local res_sub : number = b - a; -- 2.5 - 10 = -7.5
    print("2.5 (num) - 10 (int) =", res_sub);
    
    local res_mul : number = a * b; -- 10 * 2.5 = 25.0
    print("10 (int) * 2.5 (num) =", res_mul);
    
    local res_div : number = a / 2; -- 10 / 2 (int literal) -> 5.0
    print("10 (int) / 2 (int literal) =", res_div);

    -- 3. Passagem de Parametro
    print("\n3. Passagem de Parametro:");
    local val_int : integer = 100;
    print("Passando integer 100 para funcao que espera number:");
    printAsNumber(val_int);
    print("Passando literal int 999:");
    printAsNumber(999);

    -- 4. Comparacao
    print("\n4. Comparacao:");
    local x : integer = 5;
    local y : number = 5.0;
    
    if x == y then
        print("5 (int) == 5.0 (num) -> true (OK)");
    else
        print("5 (int) == 5.0 (num) -> false (FALHA)");
    end
    
    if x < 5.1 then
        print("5 (int) < 5.1 (num) -> true (OK)");
    else
        print("5 (int) < 5.1 (num) -> false (FALHA)");
    end
end
