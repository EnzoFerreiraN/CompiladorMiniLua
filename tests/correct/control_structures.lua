function void main()
    -- Teste do ... end e escopo
    local x : integer = 10;
    print(x); -- 10
    do
        local x : integer = 20;
        print(x); -- 20
        do
            local x : integer = 30;
            print(x); -- 30
        end
        print(x); -- 20
    end
    print(x); -- 10

    -- Teste elseif
    local val : integer = 15;
    if val < 10 then
        print("Menor que 10");
    elseif val < 20 then
        print("Menor que 20"); -- Deve imprimir isso
    elseif val < 30 then
        print("Menor que 30");
    else
        print("Maior ou igual a 30");
    end

    -- Teste for com passo positivo
    print("For passo 2:");
    for i = 0, 10, 2 do
        print(i); -- 0, 2, 4, 6, 8, 10
    end

    -- Teste for com passo negativo
    print("For passo -1:");
    for i = 5, 1, -1 do
        print(i); -- 5, 4, 3, 2, 1
    end

    -- Teste for sem passo (default 1)
    print("For passo default:");
    for i = 1, 3 do
        print(i); -- 1, 2, 3
    end
    
    -- Teste while
    local w : integer = 0;
    while w < 3 do
        print(w);
        w = w + 1;
    end

    -- Teste escopo variavel for
    -- print(i); -- Isso deve dar erro se descomentado, pois i é local ao for. 
    -- Mas como estamos em testes corretos, não vamos colocar erro.
end
