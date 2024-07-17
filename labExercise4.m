function [B] = labExercise4(A)
    [m,n] = size(A);

    for i = 1:1:m
        B(:,i) = A(i,:)
    end


end