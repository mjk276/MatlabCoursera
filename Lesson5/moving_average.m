function [output]=moving_average(x)
persistent out;
persistent len ;
if isempty(len)
    len = 1;
elseif len < 25
    len = len+1;
end
if isempty(out)
    out = [zeros(1,24) x];
else
    out = [out(2:end) x];
end
if len <= 50
    output = sum(out)/len;
else
    output = sum(out)/50;
end
out 