function [B]= divvy(A, k)
[m, n]= size(A);
B = zeros(m, n); 
index1 = find(rem(A,k)==0);
index2 = find(rem(A,k)~=0);
B(index1)= A(index1);
B(index2)= A(index2)*k;
end