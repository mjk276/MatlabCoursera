function [approx_pi, k] = approximate_pi(delta)
approx_pi = 0;
k = 0;
while abs(pi-approx_pi) > delta
    approx_pi = approx_pi +sqrt(12)*((-3)^(-k))/(2*k+1);
    k = k+1;
end
k = k-1;
end