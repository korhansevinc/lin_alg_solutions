function [B] = soru18(A)
    [m, n] = size(A);

    R = rref(A);
    C = [];
    i = 1;
    j = 1;
    while j <= n && i <= m
        if abs(R(i,j)) > 0.0001
            C = [C A(:,j)];
            i = i + 1;
            j = j + 1;
        else
            j = j + 1;
        end
    end
    
    % order of rows can be wrong
    % since Matlab does not do row-exchange
    % in the order of algorithm learned in the class
    [m, n] = size(C);
    [L,U,P] = lu(C);
    C = P * C;
    B = C(1:n, :);
end