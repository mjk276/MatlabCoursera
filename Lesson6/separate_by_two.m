function [E, O]= separate_by_two(A)
[m n]= size(A)
E = A(find(rem(A,2)==0));
O = A(find(rem(A,2)==1));
[m n]= size(E);
if n==1
    E = E';
    O= O';
end
end