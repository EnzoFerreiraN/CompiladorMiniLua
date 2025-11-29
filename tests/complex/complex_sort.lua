function void main()
    print("=== Teste 7: Bubble Sort ===");
    
    local arr : array<number>;
    arr[1] = 64;
    arr[2] = 34;
    arr[3] = 25;
    arr[4] = 12;
    arr[5] = 22;
    arr[6] = 11;
    arr[7] = 90;
    
    local n : integer;
    n = arrayLength(arr); -- Deve ser 7
    
    print("Array original:");
    local k : integer = 1;
    while k <= n do
        print(arr[k]);
        k = k + 1;
    end
    
    -- Bubble Sort
    local i : integer = 1;
    local j : integer;
    local temp : number;
    
    while i < n do
        j = 1;
        while j <= n - i do
            if arr[j] > arr[j+1] then
                -- Swap
                temp = arr[j];
                arr[j] = arr[j+1];
                arr[j+1] = temp;
            end
            j = j + 1;
        end
        i = i + 1;
    end
    
    print("Array ordenado:");
    k = 1;
    while k <= n do
        print(arr[k]);
        k = k + 1;
    end
end
