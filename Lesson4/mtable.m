function [mt, s] = mtable(n, m)
mt = zeros(n, m);
for k= 1:n
    for l = 1:m
        mt(k,l) = k*l;
    end
end
s = sum(sum(mt));
end
