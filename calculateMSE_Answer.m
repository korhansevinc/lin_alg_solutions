function [MSE] = calculateMSE_Answer(x, y, coef)
    [m,~] = size(x);
    [n,~] = size(coef);
    d = n - 1;
    
    A = ones(m,d+1);
    for j=d:-1:1
        A(:,j) = A(:,j+1).*x;
    end

    o = A * coef;
    e = y - o;
    MSE = e'*e / m;
end