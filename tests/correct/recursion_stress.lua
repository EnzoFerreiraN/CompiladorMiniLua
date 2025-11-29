function integer ackermann(m: integer, n: integer)
    if m == 0 then
        return n + 1;
    elseif m > 0 and n == 0 then
        return ackermann(m - 1, 1);
    else
        return ackermann(m - 1, ackermann(m, n - 1));
    end
end

function integer fib_recursive(n: integer)
    if n <= 1 then
        return n;
    end
    return fib_recursive(n - 1) + fib_recursive(n - 2);
end

function void main()
    print("Ackermann Function Test:");
    -- ack(0, 0) = 1
    print("ack(0, 0) =", ackermann(0, 0));
    
    -- ack(1, 2) = 4
    print("ack(1, 2) =", ackermann(1, 2));
    
    -- ack(2, 2) = 7
    print("ack(2, 2) =", ackermann(2, 2));
    
    -- ack(3, 2) = 29 (Deep recursion)
    print("Calculating ack(3, 2)...");
    print("ack(3, 2) =", ackermann(3, 2));
    
    print("Fibonacci Recursive Test:");
    print("fib(10) =", fib_recursive(10));
end
