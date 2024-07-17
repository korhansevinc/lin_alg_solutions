function [d] = labExercise7(A)
    [m,n] = size(A);
    d = 1 ;
    for i=1:1:m
        if sum(A(i,:)) ~= A(i,i) 
            d = 0 ;
        end


    end


end