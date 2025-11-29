function void main()
    local b: boolean; -- Default should be false (0)
    
    print("Valor padrao de b:", b);
    
    if b then
        print("b eh verdadeiro (ERRO)");
    else
        print("b eh falso (OK)");
    end
    
    if not b then
        print("not b eh verdadeiro (OK)");
    else
        print("not b eh falso (ERRO)");
    end
    
    b = true;
    print("Valor de b apos atribuicao:", b);
    
    if b then
        print("b eh verdadeiro (OK)");
    end
end
