function [A_inv] = psueudo_inverse(A)
    [U, E, V] =svd(A) ;
    [m,n] = size(E);
    for i = 1:m
        if E(i:i) ~= 0
            E(i:i) = 1 / E(i:i) ;
        end
    end

    A_inv = V * E * U' ;

end

