function [sorter]= sort3(x, y, z)
sorter= zeros(1,3);
if x > y && x > z
    sorter(3) = x;
    if y> z
        sorter(2) = y;
        sorter(1) = z;
    else
        sorter(2) = z;
        sorter(1) = y;
    end
elseif y > z
    sorter(3) = y;
    if x> z
        sorter(2) = x;
        sorter(1) = z;
    else
        sorter(2) = z;
        sorter(1) = x;
    end
else
    sorter(3) = z;
    if x>y
        sorter(2)=x;
        sorter(1)=y;
    else
        sorter(2)=y;
        sorter(1)=x;
    end
end