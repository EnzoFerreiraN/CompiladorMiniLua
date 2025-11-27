function void main()
    -- Teste Avançado de Escopo do IF
    local globalVar : integer = 100;
    local shadowVar : integer = 1;

    print("Inicio:");
    print(globalVar); -- 100
    print(shadowVar); -- 1

    -- 1. Teste de escopo no IF (True)
    if true then
        local localVarIf : integer = 10;
        local shadowVar : integer = 2; -- Sombreando variável externa
        
        print("Dentro do IF:");
        print(localVarIf); -- 10
        print(shadowVar);  -- 2 (valor local)
        print(globalVar);  -- 100 (visível)
        
        shadowVar = 20;
        print(shadowVar); -- 20
    end

    print("Apos IF:");
    print(shadowVar); -- 1 (valor externo inalterado)
    -- print(localVarIf); -- Isso causaria erro se descomentado

    -- 2. Teste de escopo no ELSEIF
    if false then
        print("Nao deve entrar aqui");
    elseif true then
        local localVarElseIf : integer = 30;
        local shadowVar : integer = 3;
        
        print("Dentro do ELSEIF:");
        print(localVarElseIf); -- 30
        print(shadowVar);      -- 3
    else
        print("Nao deve entrar aqui");
    end

    print("Apos ELSEIF:");
    print(shadowVar); -- 1

    -- 3. Teste de escopo no ELSE
    if false then
        print("Nao deve entrar aqui");
    else
        local localVarElse : integer = 50;
        local shadowVar : integer = 4;
        
        print("Dentro do ELSE:");
        print(localVarElse); -- 50
        print(shadowVar);    -- 4
    end

    print("Apos ELSE:");
    print(shadowVar); -- 1
end
