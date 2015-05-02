function [out]=square_wave(n)
out = zeros(1,1001);
t= linspace(0, 4*pi, 1001);
k = 1:n;
for l=1:1001
    out(l)=sum((sin((2*k-1)*t(l)))./(2*k-1));
end
end