function d = soru6(A)
[m,n] = size(A);
d = 1;
for i = 1:1:m
   if sum(abs(A(i,:))) ~= 1 | max(A(i,:)') ~= 1
      d = 0;
      break;
   
end
end