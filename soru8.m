function [L, U] = soru8(A)
    [m,n] = size(A);
    % initialize L,U
    U = A;
    L = eye(m);

    % compute L,U
    for j=1:m-1
        if U(j,j)==0
            disp('Matrix A has no LU decomposition!');
            U = A;      % not necessary
            L = eye(m); % not necessary
            return;
        end
        for i=j+1:m
            L(i,j) = U(i,j) / U(j,j);
            U(i,:) = U(i,:) - L(i,j) * U(j,:);
        end
    end
end

