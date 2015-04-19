function [A] = hulk(v)
A = [v'  v'.^2  v'.^3];
end