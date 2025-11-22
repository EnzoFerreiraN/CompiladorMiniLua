function void main()
    local x: integer = 10;
    local y: integer = 20;
    
    if x > y then
        print("x maior que y");
    elseif x < y then
        print("x menor que y");
    else
        print("x igual a y");
    end
    
    local count: integer = 0;
    while count < 5 do
        print("Count:", count);
        count = count + 1;
    end
    
    local i: integer;
    for i = 10, 0, -2 do
        print("Countdown:", i);
    end
end
