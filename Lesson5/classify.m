function [out]= classify(x)
[m,n,p]= size(x);
if p ==1
    if m == 0 || n==0;
        out = -1;
    elseif m==1 && n ==1
        out = 0;
    elseif (m==1 && n>1) || (n==1 && m>1)
        out = 1;
    else
        out = 2;
    end
else 
    out = 2;
end