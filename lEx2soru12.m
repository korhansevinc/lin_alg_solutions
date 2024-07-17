function [B] = lEx2soru12(k,A)
    [m,n] = size(A);
    B = ones(m,n,'uint8')*128;
    
    average = sum(sum(A)) / (m*n);

    B(A<(average-k)) = 0 ;
    B(A>(average+k)) = 255 ;
   

end