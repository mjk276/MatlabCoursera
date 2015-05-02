function [out]=neighbor(v)
[n m] = size(v);
if m<2 || n>1
    out = [];
else
    out = zeros(1, m-1);
    for k = 1:m-1
        out(k)= abs(v(k+1)-v(k));
    end
end
end