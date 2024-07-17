function [b] = lab1Soru3(A)
    b = 1 ;
    x = sum(A,1);
    y = sum(A,2);
    if (x(1) + y(1) - A(1,1)) ~= sum(A,"all")
        b = 0 ;
    end



end