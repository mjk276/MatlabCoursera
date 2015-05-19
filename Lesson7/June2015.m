function [out] = June2015()
out = cell(30,3);
days = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
for k = 1:30
    out{k, 1} = 'June';
    out{k, 2} = double(k);
    out{k, 3} = days((3*rem(k+6,7)+1):(3*rem(k+6,7)+3));
end