function [out]= odd_index(M)
tmp= ceil(size(M)/2);
n = tmp(1);
m = tmp(2);
out = zeros(n,m);
for k = 1:n
    for l = 1:m
        out(k,l)= M(2*k-1, 2*l-1);
    end
end
end