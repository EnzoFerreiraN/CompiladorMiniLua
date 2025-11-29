function void main()
    print("=== Teste 4: Arrays ===");

    -- 1. Declaração e Inicialização
    local arr : array<integer>;
    
    -- 2. Atribuição e Acesso
    arr[1] = 10;
    arr[2] = 20;
    arr[5] = 50; -- Redimensionamento automático

    print("arr[1] (10):", arr[1]);
    print("arr[2] (20):", arr[2]);
    print("arr[5] (50):", arr[5]);
    print("arr[3] (padrao 0):", arr[3]); -- Deve ser 0

    -- 3. Tamanho
    print("Tamanho do array (esperado 5):", arrayLength(arr));

    -- 4. Array de Strings
    local s_arr : array<string>;
    s_arr[1] = "Ola";
    s_arr[2] = "Mundo";
    print("s_arr[1]:", s_arr[1]);
    print("s_arr[2]:", s_arr[2]);

    -- 5. Matrizes (Array de Arrays)
    -- local mat : array<array<integer>>; 
    -- mat[1][1] = 100;
    -- print("Matriz[1][1]:", mat[1][1]);
    
    -- Iterando sobre array
    print("Iterando sobre arr:");
    local i : integer = 1;
    while i <= arrayLength(arr) do
        print(i, ":", arr[i]);
        i = i + 1;
    end
end
