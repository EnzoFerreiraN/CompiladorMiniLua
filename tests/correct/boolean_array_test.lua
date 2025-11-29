function void main()
    local arr: array<boolean>;
    arr[1] = true;
    
    print("arr[1]:", arr[1]);
    print("arr[2] (default):", arr[2]);
    
    if arr[2] then
        print("arr[2] is true (ERRO)");
    else
        print("arr[2] is false (OK)");
    end
end
