function B = soru4(A)
    [n,m] = size(A);
    B = zeros(m,n);
    for i=1:1:n
        B(:,i) = A(i,:);
    end
end