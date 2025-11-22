function integer soma(a: integer, b: integer)
    return a + b;
end

function void main()
    local res: integer;
    
    res = soma(10, 10);
    
    -- Erro: tipo incorreto de argumento
    res = soma(10, "20");
end
