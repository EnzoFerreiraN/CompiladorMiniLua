function void changeInt(n: integer)
    print("  [Func] Recebido:", n);
    n = 999;
    print("  [Func] Alterado para:", n);
end

function void changeNumber(n: number)
    print("  [Func] Recebido:", n);
    n = 999.99;
    print("  [Func] Alterado para:", n);
end

function void changeBool(b: boolean)
    print("  [Func] Recebido:", b);
    b = not b;
    print("  [Func] Alterado para:", b);
end

function void changeArrayContent(arr: array<integer>)
    print("  [Func] Recebido arr[1]:", arr[1]);
    arr[1] = 999;
    print("  [Func] Alterado arr[1] para:", arr[1]);
end

function void changeArrayRef(arr: array<integer>)
    print("  [Func] Recebido arr[1]:", arr[1]);
    
    -- Cria um novo array e atribui à variável local 'arr'
    local new_arr : array<integer>;
    new_arr[1] = 111;
    
    arr = new_arr; -- Isso afeta apenas a variável local da função
    print("  [Func] Variavel 'arr' agora aponta para novo array. arr[1]:", arr[1]);
end

function void main()
    print("=== Teste de Passagem de Parametros ===");

    -- 1. Integer (Passagem por Valor)
    print("\n1. Teste Integer (Valor):");
    local i : integer = 10;
    print("Antes:", i);
    changeInt(i);
    print("Depois (esperado 10):", i);

    -- 2. Number (Passagem por Valor)
    print("\n2. Teste Number (Valor):");
    local n : number = 5.5;
    print("Antes:", n);
    changeNumber(n);
    print("Depois (esperado 5.5):", n);

    -- 3. Boolean (Passagem por Valor)
    print("\n3. Teste Boolean (Valor):");
    local b : boolean = true;
    print("Antes:", b);
    changeBool(b);
    print("Depois (esperado 1/true):", b);

    -- 4. Array - Modificacao de Conteudo (Referencia)
    print("\n4. Teste Array - Conteudo (Referencia):");
    local a1 : array<integer>;
    a1[1] = 10;
    print("Antes:", a1[1]);
    changeArrayContent(a1);
    print("Depois (esperado 999):", a1[1]);

    -- 5. Array - Reatribuicao da Variavel (Valor do Ponteiro)
    print("\n5. Teste Array - Reatribuicao (Valor do Ponteiro):");
    local a2 : array<integer>;
    a2[1] = 50;
    print("Antes:", a2[1]);
    changeArrayRef(a2);
    print("Depois (esperado 50):", a2[1]);
    
    print("\nConclusao:");
    print("- Tipos primitivos (int, number, bool) sao passados por VALOR (copia).");
    print("- Arrays sao passados por REFERENCIA (ponteiro), permitindo alterar o conteudo.");
    print("- Mas a variavel do array em si e local, entao reatribuir o array nao afeta fora.");
end
