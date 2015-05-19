function [output] = censor(input, additional)
counter = 1;
tmp = cell(size(input));
for k = 1:length(input)
 if isempty(strfind(input{k}, additional))
    tmp{counter} = input{k};
    counter = counter+1;
 end
end
 output = tmp(1:counter-1);