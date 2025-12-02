function void main()
    -- Matrix Operations (Simulating 2D array with 1D array)
    -- Matrix 2x2
    -- Index = row * width + col
    
    local A : array<integer>;
    local B : array<integer>;
    local C : array<integer>;
    local width : integer = 2;
    
    -- Initialize A = [[1, 2], [3, 4]]
    A[1] = 1; A[2] = 2;
    A[3] = 3; A[4] = 4;
    
    -- Initialize B = [[5, 6], [7, 8]]
    B[1] = 5; B[2] = 6;
    B[3] = 7; B[4] = 8;
    
    print("Matrix A:");
    print(A[1], A[2]);
    print(A[3], A[4]);
    
    print("Matrix B:");
    print(B[1], B[2]);
    print(B[3], B[4]);
    
    -- C = A + B
    local row : integer;
    local col : integer;
    local idx : integer;
    
    for row = 0, 1 do
        for col = 0, 1 do
            idx = row * width + col + 1;
            C[idx] = A[idx] + B[idx];
        end
    end
    
    print("Matrix Sum (A + B):");
    print(C[1], C[2]);
    print(C[3], C[4]);
    
    -- Dot Product of first row of A and first column of B
    -- Row 0 of A: A[1], A[2]
    -- Col 0 of B: B[1], B[3]
    local dotProd : integer;
    dotProd = A[1] * B[1] + A[2] * B[3];
    print("Dot Product (Row 0 A . Col 0 B):", dotProd);
end
