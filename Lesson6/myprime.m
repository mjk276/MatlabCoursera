function [is_prime]= myprime(n)
m = ceil(sqrt(n));
is_prime= true;
k = 2;
while is_prime && k<=m
    if rem(n,k)==0
        is_prime= false;
    end
    k = k+1;
end
if n==2
    is_prime=true;
end
end