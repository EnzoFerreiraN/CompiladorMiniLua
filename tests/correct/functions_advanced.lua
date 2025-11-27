function integer soma(a: integer, b: integer)
    return a + b;
end

function integer dobro(x: integer)
    return x * 2;
end

function void imprimeDobro(x: integer)
    print(dobro(x));
end

function integer fatorial(n: integer)
    if n <= 1 then
        return 1;
    else
        return n * fatorial(n - 1);
    end
end

function void main()
    -- Chamada de função como argumento
    local res : integer = soma(dobro(5), 10); -- (5*2) + 10 = 20
    print(res);

    -- Chamada de void
    imprimeDobro(10); -- 20

    -- Recursão
    print(fatorial(5)); -- 120

    -- Sombreamento de parametro
    local a : integer = 100;
    local res2 : integer = soma(a, 50); -- a aqui é 100
    print(res2); -- 150
end
