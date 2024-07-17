function [b] = soru3(A,i,j)
    b = 0 ;
    [m,n] = size(A);
    I = eye(m);
    C = A == I ;

    if( C(i,j) == 0)
        b = 1 ;
    end