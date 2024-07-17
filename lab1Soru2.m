function [A] = lab1Soru2(n,k,l)

 A=zeros(n);
 for i = 1 :1:n
     v = randi(l,n,k);
     A(i,:) = v(:,1)';
     A(:,i) = v(:,1);

end