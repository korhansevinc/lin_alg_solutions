function [cols] = lab1Soru5(A)
    [m,n] = size(A);
    r = 0;
    cols = [];
    for i=1:1:n
        if rank(A(:,1:i)) > r
            r = rank(A(:,1:i));
            cols = [cols; i];
            
        end


    end
end