function [mystr]= generationXYZ(number) 
if number < 1966
    mystr = 'O';
elseif number > 2012
    mystr = 'K';
elseif number >= 1966 && number <= 1980
    mystr = 'X';
elseif number >= 1981 && number <= 1999
    mystr = 'Y';
else
    mystr = 'Z';
end