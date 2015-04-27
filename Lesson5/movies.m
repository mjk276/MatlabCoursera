function [out] = movies(hr1, min1, durmin1, hr2, min2, durmin2)
timeinitial1 = hr1*60+min1;
timeinitial2 = hr2*60+min2;

timefinal1 = hr1*60+min1+durmin1;

if timeinitial1 <= timeinitial2
   if timeinitial2-timefinal1 >= 0 && timeinitial2-timefinal1 <= 30
       out = true;
   else
       out = false;
   end
else
    out = false;
end