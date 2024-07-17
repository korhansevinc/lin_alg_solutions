function [p] = labExercise6(A)
    [m,n] = size(A);
    
    p = 1 ;
    for i = 1:1:m
        if max(A(i,:)) ~= 1 | sum(abs(A(i,:))) ~= 1
            p = 0;
            break ;
        end

    end

end