function integer factorial(n: integer)
    if n <= 1 then
        return 1;
    else
        return n * factorial(n - 1);
    end
end

function void main()
    local num: integer = 4;
    local result: integer;
    result = factorial(num);
    print("Fatorial de", num, "eh", result);
end
