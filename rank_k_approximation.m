function [Ak] = rank_k_approximation(A,k)
    [U,E,V] = svd(A) ;
    V = V' ;
    Ak = U(:,1:k) * E(1:k , 1:k) * V(1:k, :) ;

end