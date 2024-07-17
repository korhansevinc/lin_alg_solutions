function [R_ab] = lab_Exercises_3_ex1(l)
    
    m= l ;
    n = l + 1 ;
    
    C = eye(m);
    for i=1:m
        C(i,i) = 1 / i ;
    end

    A = zeros(m,n);
    for i=1:m
        A(i,i) = -1;
        A(i,i+1) = 1 ;
    end

    L = A' * C * A ;
    L1 = L(2:end-1,1);
    L2 = L(2:end-1,2:end-1);
    
    v = L2 \ (-1 * L1);
    real_v = [1; v ; 0];
    I = L * real_v ;
    R_ab = 1 / abs(I(1));


end