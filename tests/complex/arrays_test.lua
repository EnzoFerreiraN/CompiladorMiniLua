function void main()
    local a : array<number>;
    local b : array<number>;
    local c : array<string>;

    for i = 1, 10 do
        b[i] = i * 2;
    end

    print(arrayLength(b));

    a = b;

    a[10] = 0;

    print(arrayLength(a));

    for i = 1, arrayLength(a) do
        print(a[i]);
    end

    print(b[10]);
    
end