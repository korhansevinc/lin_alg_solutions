function A = soru5(n)
    I = eye(2);
    A = [];
    for i=1:n
        A = [A;i*I];
    end
end