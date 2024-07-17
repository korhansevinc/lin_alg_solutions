function [v] = labExercise1(n,k)
    if n <= k
        v = randperm(k,n);
    else
        v = 0 ;
    end

end