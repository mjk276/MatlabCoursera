function [tmp] = May2015()
days = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
tmp = [];
for k =1:31
    p.month = 'May';
    p.date = k;
    p.day = days((3*rem(k+3,7)+1):(3*rem(k+3,7)+3));
    tmp = [tmp, p];
end