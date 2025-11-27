function void main()
    -- Teste de Potência (^) - Associatividade à direita
    local pow1 : number = 2.0 ^ 3.0; -- 8.0
    print(pow1);
    local pow2 : number = 2.0 ^ 3.0 ^ 2.0; -- 2^(3^2) = 2^9 = 512.0, não (2^3)^2 = 64
    print(pow2);

    -- Teste de Unários (- e not)
    local neg : integer = -5;
    print(neg);
    local b : boolean = not true;
    if b then print("Erro not"); else print("Ok not"); end
    local b2 : boolean = not false;
    if b2 then print("Ok not false"); else print("Erro not false"); end

    -- Multiplicativos (*, /, //, %)
    local mult : integer = 10 * 2;
    print(mult);
    local div : number = 10.0 / 4.0; -- 2.5
    print(div);
    local idiv : integer = 10 // 3; -- 3
    print(idiv);
    local mod : integer = 10 % 3; -- 1
    print(mod);

    -- Aditivos (+, -)
    local soma : integer = 10 + 5;
    print(soma);
    local sub : integer = 10 - 5;
    print(sub);

    -- Concatenação (..)
    local s1 : string = "Ola " .. "Mundo";
    print(s1);
    local s2 : string = "A" .. "B" .. "C"; -- Associatividade à direita (embora para string não mude o valor final)
    print(s2);

    -- Relacionais
    if 10 > 5 then print("10 > 5"); end
    if 5 < 10 then print("5 < 10"); end
    if 10 >= 10 then print("10 >= 10"); end
    if 5 <= 5 then print("5 <= 5"); end
    if 10 == 10 then print("10 == 10"); end
    if 10 ~= 5 then print("10 ~= 5"); end

    -- Lógicos (and, or)
    if true and true then print("true and true"); end
    if true or false then print("true or false"); end
    if false or true then print("false or true"); end
    
    -- Precedência Mista
    -- * tem precedência sobre +
    local prec1 : integer = 2 + 3 * 4; -- 14
    print(prec1);
    
    -- and tem precedência sobre or
    if false and true or true then 
        print("and > or (false and true) or true -> false or true -> true"); 
    else 
        print("Erro precedencia and/or"); 
    end

    -- Operadores relacionais têm precedência sobre lógicos
    if 1 < 2 and 3 > 2 then print("Relacional > Logico"); end
end
