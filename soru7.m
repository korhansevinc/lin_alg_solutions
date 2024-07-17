function d = soru7(A)
   [n,n] = size(A);
   d = 1;
   for i=1:1:n
      if sum(abs(A(i,:)')) ~= abs(A(i,i))
          d = 0;
      end
   end
end