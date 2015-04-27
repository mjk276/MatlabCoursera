function [out]=older(y1,m1,d1,y2,m2,d2)
if y1==y2 && m1==m2 && d1==d2
    out = 0;
else
    if y1 > y2
        out = -1;
    elseif y1 == y2
        if m1>m2
            out = -1;
        elseif m1==m2
            if d1>d2
                out =-1;
            else
                out =1;
            end
        else
            out = 1;
        end
    else
        out = 1;
    end
end