function A = lEx2soru1(m,n)
    
    A = zeros(m,n,'uint8');
    A(1:2:m,:) = 255;
    imshow(A);

end