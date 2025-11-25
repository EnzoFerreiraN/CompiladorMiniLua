function void main()
    local a : integer = 2;
    local b : integer = 3;
    local c : integer = 4;
    local res : number;
    
    -- 2 + 3 * 4 = 14 (not 20)
    res = a + b * c;
    print(res);
    
    -- (2 + 3) * 4 = 20
    res = (a + b) * c;
    print(res);
    
    -- 2 * 3 ^ 2 = 18 (not 36)
    res = a * b ^ 2; 
    print(res);
end
