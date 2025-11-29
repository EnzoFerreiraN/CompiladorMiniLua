function void main()
    local arr: array<string>;
    arr[1] = "Hello";
    arr[3] = "World";
    
    print("Index 1:", arr[1]);
    print("Index 2 (uninit):", arr[2]);
    print("Index 3:", arr[3]);
end
