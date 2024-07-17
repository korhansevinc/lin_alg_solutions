function [C] = lEx2soru4(X1,Y1,A,B)
    

    [m,n] = size(A);
    i = round(m*X1);
    j = round(n*Y1);

    C = A ;
    [m,n] = size(B);
    C(i:i+m-1- j : j+n-1) = B;



end