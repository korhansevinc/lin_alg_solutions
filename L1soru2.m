function [b1, b2, b3] = soru2(A, i, j, k)
    b1 = 0 ;
    b2 = 0 ;
    b3 = 0 ;

    r = A(i , j:j+k-1);
    c = A(i:i+k-1 ,j);
    if (sum(r) == sum(c))
        b1 = 1 ;
    end
    if (mean(r== c') == 1)
        b2 = 1 ;
    end
    if (mean (r== c') > 0.5)
        b3 = 1 ;
    end