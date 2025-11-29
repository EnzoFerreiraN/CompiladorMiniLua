function void main()
    print("=== Teste 8: Concatenacao de Strings ===");

    -- 1. Literais
    print("1. Literais:");
    print("Ola " .. "Mundo");
    
    -- 2. Variaveis
    print("2. Variaveis:");
    local s1 : string = "Inicio";
    local s2 : string = "Fim";
    local res : string;
    res = s1 .. " - Meio - " .. s2;
    print(res);

    -- 3. Encadeamento
    print("3. Encadeamento:");
    local a : string = "A";
    local b : string = "B";
    local c : string = "C";
    local d : string = "D";
    print(a .. b .. c .. d);

    -- 4. Loop (Construcao de String)
    print("4. Loop (Construcao):");
    local str_build : string = "";
    local i : integer = 1;
    while i <= 5 do
        str_build = str_build .. ".";
        print("Passo", i, ":", str_build);
        i = i + 1;
    end
    print("Final:", str_build);

    -- 5. String Vazia
    print("5. String Vazia:");
    local empty : string = "";
    local full : string = "Cheio";
    print("'" .. empty .. full .. "'");
    print("'" .. full .. empty .. "'");

    -- 6. Concatenação em atribuição
    local parte1 : string = "Parte 1";
    local parte2 : string = "Parte 2";
    local total : string = parte1 .. " e " .. parte2;
    print("Total:", total);
end
