function [A] = labExercise5(n)
    identity = eye(2);
    A = [];
    for i = 1:1:n
        A = [A; n* identity];
    end

end