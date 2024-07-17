function [A] = soru1(v, m, n, direction)
    A = zeros(m,n)
    if(direction == 0)
       for i = 1 : m
           A(i,:) = v(((i-1)*n)+1: i*n );% 1-4
       end
    end
    if(direction == 1)
        for j = 1 : n
            A(:,j) = v(((j-1)*m)+1 : j*m);
        end
    end