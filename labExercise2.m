function permutation_matrix = labExercise2(n)
    
    v = randperm(n,n);
    permutation_matrix = zeros(n);
    
    for i = 1:n
        permutation_matrix(i,v(i)) = 1 ;
    end

end