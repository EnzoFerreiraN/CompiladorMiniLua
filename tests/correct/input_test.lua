function void main()
    local n : number;
    local s : string;
    
    print("Digite um numero:");
    n = inputNumber();
    print("Voce digitou:", n);
    
    print("Digite uma string:");
    s = inputString();
    print("Voce digitou:", s);
    
    print("Soma com 10:", n + 10);
    print("Concatenacao:", "Ola " .. s);
end
