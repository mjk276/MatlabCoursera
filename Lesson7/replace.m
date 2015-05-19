function [out] = replace(input, c1, c2)
out = input;
for k = 1:length(input)
    tmp = strfind(input{k}, c1);
    if ~isempty(tmp)
        tmp2=input{k};
        for l=1:length(tmp)
            tmp2(tmp(l):tmp(l)+length(c1)-1) = c2; 
        end
        out{k} = tmp2;
    end
end