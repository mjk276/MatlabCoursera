function [time_minutes, distance]= light_time(in)
distance = in*1.609;
time_minutes = distance/300000/60;
end