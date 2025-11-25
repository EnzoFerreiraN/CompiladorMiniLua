function integer fib(n : integer)
    if n <= 1 then
        return n;
    else
        return fib(n - 1) + fib(n - 2);
    end
end

function void main()
    local n : integer = 10;
    print(fib(n));
end
