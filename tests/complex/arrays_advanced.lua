function void modifyArray(arr: array<integer>, idx: integer, val: integer)
    arr[idx] = val;
end

function void printArray(arr: array<integer>)
    local i : integer = 1;
    local length : integer = arrayLength(arr);
    while i <= length do
        print(arr[i]);
        i = i + 1;
    end
end

function void main()
    print("=== Teste 9: Arrays Avancados ===");

    -- 1. Passagem por Referencia
    print("1. Passagem por Referencia:");
    local a : array<integer>;
    a[1] = 10;
    print("Antes:", a[1]);
    modifyArray(a, 1, 999);
    print("Depois (esperado 999):", a[1]);

    -- 2. Array de Booleans (Crivo de Eratostenes - Primos ate 20)
    print("2. Crivo de Eratostenes (Primos ate 20):");
    local is_prime : array<boolean>;
    local limit : integer = 20;
    
    -- Inicializa tudo como true
    local i : integer = 2;
    while i <= limit do
        is_prime[i] = true;
        i = i + 1;
    end

    -- Marca nao-primos
    local p : integer = 2;
    while p * p <= limit do
        if is_prime[p] then
            local mult : integer = p * p;
            while mult <= limit do
                is_prime[mult] = false;
                mult = mult + p;
            end
        end
        p = p + 1;
    end

    -- Imprime primos
    i = 2;
    while i <= limit do
        if is_prime[i] then
            print(i);
        end
        i = i + 1;
    end

    -- 3. Simulacao de Matriz (1D)
    print("3. Matriz em Array 1D (3x3):");
    local matrix : array<integer>;
    local rows : integer = 3;
    local cols : integer = 3;
    
    -- Preenchendo: mat[r][c] = r * 10 + c
    local r : integer = 1;
    while r <= rows do
        local c : integer = 1;
        while c <= cols do
            local idx : integer = (r - 1) * cols + c;
            matrix[idx] = r * 10 + c;
            c = c + 1;
        end
        r = r + 1;
    end

    -- Lendo diagonal principal
    print("Diagonal Principal:");
    local k : integer = 1;
    while k <= rows do
        local idx : integer = (k - 1) * cols + k;
        print(matrix[idx]);
        k = k + 1;
    end

    -- 4. Copia de Referencia
    print("4. Copia de Referencia:");
    local b : array<integer>;
    b[1] = 50;
    local c : array<integer> = b; -- c aponta para b
    c[1] = 100;
    print("b[1] (esperado 100):", b[1]);
end
