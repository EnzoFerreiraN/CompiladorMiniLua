function void main()
    for i = 1, 10 do
        print(i);
    end
    print(i); -- Erro: i é local ao for
end
