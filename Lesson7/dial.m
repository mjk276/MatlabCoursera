function [A] = dial(input)
A = char(1:122);
A('A':'Z') = str2num(A('A':'Z')-'A'+'0');
end
