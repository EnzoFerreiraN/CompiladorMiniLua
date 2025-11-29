function void main()
    print("=== Teste 1: Tipos, Variaveis e Constantes ===");

    -- 1. Declaração e Inicialização
    local i : integer = 10;
    local n : number = 3.14;
    local b : boolean = true;
    local s : string = "Ola Mundo";
    
    print("Inteiro:", i);
    print("Number:", n);
    print("Boolean:", b);
    print("String:", s);

    -- 2. Valores Padrão
    local def_i : integer;
    local def_n : number;
    local def_b : boolean;
    local def_s : string;

    print("Padrao Integer (esperado 0):", def_i);
    print("Padrao Number (esperado 0.00):", def_n);
    print("Padrao Boolean (esperado 0/false):", def_b);
    print("Padrao String (esperado ''):", def_s);

    -- 3. Constantes
    const PI : number = 3.14159;
    const MAX : integer = 100;
    print("Constante PI:", PI);
    print("Constante MAX:", MAX);

    -- 4. Coerção (Integer -> Number)
    local x : number;
    x = 5; -- Atribuindo inteiro a number
    print("Coercao Int -> Number (5 -> 5.00):", x);

    local y : number = 10 + 2.5; -- Int + Number
    print("Operacao Mista (10 + 2.5):", y);
end
