function [out] = roman(in)
len = length(in);
if len == 1
    out = uint8(1);
else
    for k= 1:len-1
        if strcmp(in(k:k+1), 'IV');
            
        end
    end
end