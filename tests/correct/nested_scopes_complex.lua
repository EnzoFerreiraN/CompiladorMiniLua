function void main()
    local x : integer = 100; -- "Global" to main
    local y : integer = 200;

    print("Main start: x =", x, "y =", y); -- 100, 200

    do
        local x : integer = 10; -- Shadow x
        print("Block 1: x =", x, "y =", y); -- 10, 200
        
        do
            local x : integer = 1; -- Shadow x again
            local y : integer = 20; -- Shadow y
            print("Block 2: x =", x, "y =", y); -- 1, 20
        end
        
        print("Back to Block 1: x =", x, "y =", y); -- 10, 200
    end

    print("Back to Main: x =", x, "y =", y); -- 100, 200

    -- Test scope in for loop
    local i : integer = 50;
    print("Before loop: i =", i); -- 50
    
    for i = 1, 3 do
        print("Inside loop: i =", i); -- 1, 2, 3
        local x : integer = i * 10;
        print("Inside loop local x =", x); -- 10, 20, 30
    end
    
    print("After loop: i =", i); -- 50 (Loop variable i should be local to loop)
    
    -- Test scope in if
    if x > 50 then
        local z : integer = 999;
        print("Inside if: z =", z); -- 999
        local x : integer = 555;
        print("Inside if: x =", x); -- 555
    end
    
    print("After if: x =", x); -- 100
    
    -- Test scope in while
    local w : integer = 0;
    while w < 2 do
        local x : integer = 777;
        print("Inside while: x =", x); -- 777
        w = w + 1;
    end
    print("After while: x =", x); -- 100
end
