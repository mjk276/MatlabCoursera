function [A] = bell(n)
if n>0 && floor(n)==n
    A = zeros(n);
    A(1,1)=1;
    for k=1:n-1
        A(k+1,1)=A(1,k);
        for p=1:k
            A(k+1-p,p+1)= A(k+1-p, p)+A(k+2-p, p);
        end
    end
else
    A=[];
end