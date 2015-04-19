function [out] = identity(n)
out = zeros(n);
for k = 1:n
    out (k,k)= 1;
end
end