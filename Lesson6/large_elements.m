function [out]= large_elements(X)
    [m n]= size(X);
    out = [];
    for k = 1:m
        for l = 1:n
            if X(k,l)>(k+l)
                out= [out; [k l]];
            end
        end
    end
end