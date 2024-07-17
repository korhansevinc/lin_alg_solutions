function [B] = lEx2soru3(A,X1,X2,Y1,Y2)

    [m,n] = size(A);
    j1 = round(X1*n);
    j2 = round(X2*n);
    j3 = round(Y1*m);
    j4 = round(Y2*m);

    B = A(j3:j4,j1:j2);

end