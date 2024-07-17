function [B] = soru17(A)
    [m, n] = size(A);

    R = rref(A);
    B = [];
    i = 1;
    j = 1;
    while j <= n && i <= m
        if abs(R(i,j)) > 0.0001
            B = [B A(:,j)];
            i = i + 1;
            j = j + 1;
        else
            j = j + 1;
        end
    end
end