function [b, c] = soru9(A)
    [m,n] = size(A);
    
    if m ~= n
        b = 0;
        return
    end
    
    b = 0;
%     if sum(sum(A' ~= A)) == 0
%         b = 1;
%     end
    % You can also USE isequal 
    if sum(sum(abs(A-A'))) == 0
        b = 1;
    end
    
    c = 0;
%     if sum(sum(A' ~= -1*A)) == 0
%         c = 1;
%     end
    if sum(sum(abs(A'+A))) == 0
        c = 1;
    end
end