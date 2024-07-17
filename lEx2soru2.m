function [B] = lEx2soru2(A)
    
    [m,n] = size(A);
    B = A ;
    average = sum(sum(A))/ (m*n);

    B(A<average) = 0;
    B(A>average) = 255;


end