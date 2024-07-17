function [b] = labExercise9(A)
    b = 0 ;
    if mean(mean(A == A')) == 1
        b= 1;
    end

end