function void main()
    local x : integer = 10;
    print(x); -- 10
    
    do
        local x : integer = 20; -- Shadowing
        print(x); -- 20
        
        do
            local x : integer = 30;
            print(x); -- 30
        end
        
        print(x); -- 20
    end
    
    print(x); -- 10
end
