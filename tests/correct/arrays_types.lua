function void main()
    -- Teste de Arrays
    local arrInt : array<integer>;
    arrInt[0] = 10;
    arrInt[1] = 20;
    print(arrInt[0]);
    print(arrInt[1]);

    local arrStr : array<string>;
    arrStr[0] = "Hello";
    arrStr[1] = "World";
    print(arrStr[0] .. " " .. arrStr[1]);

    -- Teste de len (string length)
    local s : string = "Tamanho";
    local l : integer = len(s);
    print(l); -- Deve imprimir o tamanho (7?)

    -- Teste de tipos
    local n : number = 10; -- Coerção int -> number
    print(n);
    
    local i : integer = 5;
    local f : number = 5.5;
    local res : number = i + f; -- int + number -> number
    print(res);

    -- Teste de arrayLength (se funcionar)
    -- Como a definição atual parece não aceitar argumentos, vamos testar se conseguimos chamar
    -- Se falhar, saberemos que a definição está errada.
    -- local lenArr : integer = arrayLength(arrInt); 
    -- print(lenArr);
end
