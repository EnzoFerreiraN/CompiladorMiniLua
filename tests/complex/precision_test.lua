function void main()
    print("=== Teste de Precisao ===");
    local pi : number = 3.14159265359;
    print("Pi (esperado ~3.14159...):", pi);
    
    local small : number = 0.00012345;
    print("Pequeno (esperado 0.00012345):", small);
    
    local large : number = 12345.6789;
    print("Grande (esperado 12345.6789):", large);
end
