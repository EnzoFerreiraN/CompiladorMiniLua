function void main()
    -- Bubble Sort Implementation
    local arr : array<integer>;
    local size : integer = 10;
    
    -- Initialize array in reverse order: 10, 9, ..., 1
    local i : integer;
    for i = 0, size - 1 do
        arr[i] = size - i;
    end
    
    print("Before Sort:");
    for i = 0, size - 1 do
        print(arr[i]);
    end
    
    -- Bubble Sort Algorithm
    local j : integer;
    local temp : integer;
    local swapped : boolean;
    
    for i = 0, size - 1 do
        swapped = false;
        for j = 0, size - i - 2 do
            if arr[j] > arr[j+1] then
                -- Swap
                temp = arr[j];
                arr[j] = arr[j+1];
                arr[j+1] = temp;
                swapped = true;
            end
        end
        -- Optimization: if no elements were swapped, array is sorted
        if not swapped then
            -- break; -- Break not implemented yet? Let's check grammar. 
            -- Assuming no break, we just continue, but logic holds.
        end
    end
    
    print("After Sort:");
    for i = 0, size - 1 do
        print(arr[i]);
    end
end
