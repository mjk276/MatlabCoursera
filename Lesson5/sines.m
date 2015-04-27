function [s1, s2, sums] = sines(pts,amp,f1,f2)

if nargin == 0
    pts = 1000;
    amp = 1;
    f1 = 100;
    f2 = 1.05*f1;
elseif nargin ==1
    amp = 1;
    f1 = 100;
    f2 = 1.05*f1;
elseif nargin == 2
    f1 = 100;
    f2 = 1.05*f1;
elseif nargin == 3;
    f2 = 1.05*f1;
end
t = linspace(0, 1,pts);
s1 = amp*sin(2*pi*f1*t);
s2 = amp*sin(2*pi*f2*t);
sums = s1+s2;
end