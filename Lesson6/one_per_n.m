function [n]= one_per_n(x)
n=1;
sum =1;
while sum <x
    n = n+1;
    if n > 10000
        sum = x+1;
        n = -1;
    end
    sum = sum+1/n;
end
end