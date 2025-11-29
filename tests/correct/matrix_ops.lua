function void main()
    -- Matrix Operations (Simulating 2D array with 1D array)
    -- Matrix 2x2
    -- Index = row * width + col
    
    local A : array<integer>;
    local B : array<integer>;
    local C : array<integer>;
    local width : integer = 2;
    
    -- Initialize A = [[1, 2], [3, 4]]
    A[0] = 1; A[1] = 2;
    A[2] = 3; A[3] = 4;
    
    -- Initialize B = [[5, 6], [7, 8]]
    B[0] = 5; B[1] = 6;
    B[2] = 7; B[3] = 8;
    
    print("Matrix A:");
    print(A[0], A[1]);
    print(A[2], A[3]);
    
    print("Matrix B:");
    print(B[0], B[1]);
    print(B[2], B[3]);
    
    -- C = A + B
    local row : integer;
    local col : integer;
    local idx : integer;
    
    for row = 0, 1 do
        for col = 0, 1 do
            idx = row * width + col;
            C[idx] = A[idx] + B[idx];
        end
    end
    
    print("Matrix Sum (A + B):");
    print(C[0], C[1]);
    print(C[2], C[3]);
    
    -- Dot Product of first row of A and first column of B
    -- Row 0 of A: A[0], A[1]
    -- Col 0 of B: B[0], B[2]
    local dotProd : integer;
    dotProd = A[0] * B[0] + A[1] * B[2];
    print("Dot Product (Row 0 A . Col 0 B):", dotProd);
end
