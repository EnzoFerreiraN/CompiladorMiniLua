function integer add(a: integer, b: integer)
    return a + b;
end

function void main()
    local x: integer = 10;
    local y: integer = 20;
    local z: integer;
    z = add(x, y);
    print(z);
end
