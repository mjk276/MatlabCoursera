function [board] = checkerboard(n, m)
board = zeros(n,m);
for k = 1:n
    for l = 1:m
        if not(rem(k+l,2))
            board(k, l)= 1;
        end
    end
end