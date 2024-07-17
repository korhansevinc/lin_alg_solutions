function B = lExsoru13(A)

    [m,n] = size(A);
    B = ones(m,n,'uint8');
    B = A ;
    minimum = min(A,[],'all');
    maximum = max(A,[],'all');
    B(A(minimum)) = 0 ;
    B(A(maximum)) = 255 ;
    B(A(maximum)/2) = 85 ;
    B(A(minimum)*3) = 170 ;
    


end