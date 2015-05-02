function [w] = replace_me(v,a,b,c)
index = find(v==a);
replace = zeros(1,2);
if ~isempty(index)
    w = [];%zeros(1, 2*length(index));
    if nargin == 3
        replace =[b b];
    elseif nargin==4
        replace =[b c];
    end
    if length(index)==1
        w = [v(1:index-1) replace v(index+1:end)];
    else
        for k= 1:length(index)
            if k==1
                w = [v(1:index(1)-1) replace];
            elseif k==length(index)
                w = [w v(index(k-1)+1:index(k)-1) replace v(index(k)+1:end)];
            else
                w = [w v(index(k-1)+1:index(k)-1) replace];
            end
        end
    end
else
    w=v;
end