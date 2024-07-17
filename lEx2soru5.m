function [B] = lEx2soru5(A)
    [m,n] = size(A);    
    B = A ;
    B(2:2:m,:) = [];
    B(:,2:2:n) = [];
end