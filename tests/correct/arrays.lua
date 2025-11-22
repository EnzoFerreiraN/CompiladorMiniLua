function void main()
    local notas: array<number>;
    local i: integer;
    
    -- Inicializando array (simulado, ja que nao tem new)
    -- Na pratica, arrays em MiniLua parecem ser geridos externamente ou assumidos como alocados
    -- O analisador semantico so checa tipos
    
    notas[1] = 7.5;
    notas[2] = 8.0;
    notas[3] = 6.5;
    
    local soma: number = 0.0;
    
    for i = 1, 3 do
        soma = soma + notas[i];
    end
    
    print("Media:", soma / 3.0);
end
