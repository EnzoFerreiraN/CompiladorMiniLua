function void main()
    print("=== Teste 3: Estruturas de Controle ===");

    -- 1. If-Elseif-Else
    local x : integer = 10;
    
    print("Testando If (x=10):");
    if x < 5 then
        print("x < 5 (Incorreto)");
    elseif x > 15 then
        print("x > 15 (Incorreto)");
    elseif x == 10 then
        print("x == 10 (Correto)");
    else
        print("Else (Incorreto)");
    end

    -- 2. While
    print("Testando While (contagem 1 a 5):");
    local i : integer = 1;
    while i <= 5 do
        print(i);
        i = i + 1;
    end

    -- 3. For
    print("Testando For (1 a 5):");
    for j = 1, 5 do
        print(j);
    end

    print("Testando For com passo (0 a 10 passo 2):");
    for k = 0, 10, 2 do
        print(k);
    end

    -- 4. Escopo (Do..End)
    print("Testando Escopo:");
    local global_var : integer = 100;
    do
        local local_var : integer = 50;
        print("Dentro do escopo - global:", global_var);
        print("Dentro do escopo - local:", local_var);
        
        local global_var : integer = 200; -- Shadowing
        print("Dentro do escopo - global shadow:", global_var);
    end
    print("Fora do escopo - global:", global_var);
    -- print(local_var); -- Isso deve causar erro semantico se descomentado

    -- 5. Aninhamento
    print("Testando Aninhamento:");
    local n : integer = 0;
    while n < 3 do
        print("Ciclo While:", n);
        if n == 1 then
            print("  -> n e 1");
        end
        n = n + 1;
    end
end
