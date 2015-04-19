function [out]= randomness(limit, n, m)
out = ceil(limit*rand(n,m));
end