function [b] = soru15(A)
    [m, n] = size(A);
    if m~=n
        b = 0;
        return
    end
    
    % 1st way
    R = rref(A);
    for i=1:n
        if abs(R(i,i)) < 0.0001
            b = 0;
            return
        end
    end
    
    % 2nd way
    [L,U,P] = lu(A);
    for i=1:n
        if abs(U(i,i)) < 0.0001
            b = 0;
            return
        end
    end
    
    % with no loop
    R = rref(A);
    if sum(sum(R ~= eye(n))) > 0
        b = 0;
        return
    end
    
    b = 1;
end