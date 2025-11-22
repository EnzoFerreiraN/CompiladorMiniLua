function integer getNumber()
    -- Erro: funcao integer retornando string
    return "texto";
end

function void doSomething()
    -- Erro: funcao void retornando valor
    return 10;
end

function void main()
    getNumber();
end
