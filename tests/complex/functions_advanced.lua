function integer soma(a: integer, b: integer)
    return a + b;
end

function integer fatorial(n: integer)
    if n <= 1 then
        return 1;
    else
        return n * fatorial(n - 1);
    end
end

function integer fibonacci(n: integer)
    if n <= 1 then
        return n;
    end
    return fibonacci(n - 1) + fibonacci(n - 2);
end

function void main()
    print("=== Teste 5: Funcoes ===");

    -- 1. Chamada Simples
    local res : integer;
    res = soma(10, 20);
    print("Soma(10, 20):", res);

    -- 2. Recursão (Fatorial)
    print("Fatorial(5) (esperado 120):", fatorial(5));
    print("Fatorial(7) (esperado 5040):", fatorial(7));

    -- 3. Recursão (Fibonacci)
    print("Fibonacci(10) (esperado 55):", fibonacci(10));

    -- 4. Escopo de Parâmetros
    local a : integer = 100;
    local b : integer = 200;
    print("Variaveis locais antes da chamada:", a, b);
    print("Resultado soma(a, b):", soma(a, b));
    print("Variaveis locais apos chamada (devem ser iguais):", a, b);
end
