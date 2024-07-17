function [r] = soru16(A)
    [m, n] = size(A);
    
    % 1st way
    R = rref(A);
    r = m;
    for i=m:-1:1
        if abs(sum(abs(R(i,:)))) < 0.0001
            r = r - 1;
        else
            break
        end
    end
    
%     % 2nd way
%     R = rref(A);
%     r = 0;
%     i = 1;
%     j = 1;
%     while j <= n && i <= m
%         if abs(R(i,j)) > 0.0001
%             r = r + 1;
%             i = i + 1;
%             j = j + 1;
%         else
%             j = j + 1;
%         end
%     end
end