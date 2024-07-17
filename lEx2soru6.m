function [B] = lEx2soru6(A)

    [m,n] = size(A);
    x = floor(m/2);
    y = floor(n/2);

    C = zeros(x,n);
    i = 1:m/2;
    C(i,:) = int16((int16(A(2*i-1,:)) + int16(A(2*i,:)))/2) ;

    B = zeros(x,y,'uint8');
    i = 1:n/2;
    B(:,i) = int16((int16(C(:,2*i-1)) + int16(C(:,2*i)))/2) ;


end