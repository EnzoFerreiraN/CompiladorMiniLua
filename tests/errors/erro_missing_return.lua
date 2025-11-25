function integer soma(a : integer, b : integer)
    local res : integer = a + b;
    -- Erro: Função do tipo integer deve retornar um valor, mas não há comando return
end

function void main()
    local x : integer;
    x = soma(10, 20);
end
