function [R_ab] = lab_Exercises_3_ex2(l)
    
    n = l + 2 ;
    m = 2 * l ;

    C = eye(m);

    for i = l+1:2*l-1
        C(i,i) = 1 / 2 ;
    end

    A = zeros(m,n);

    for i=1:l
        A(i,i+1) = -1 ;
        A(i,i+2) = 1 ;
        A(l+i,1) = -1 ;
        A(l+i,i+2) = 1 ;
    end
    
  
    L = A' * C * A ;
    L1 = L(3:end,1:2);
    L2 = L(3:end,3:end);
    b = -1 * L1 * [2;4];
    v = L2 \ b ;
    real_v = [2; 4; v];
    I = L * real_v ;
    R_ab = 2 / abs(I(1)) ;


end