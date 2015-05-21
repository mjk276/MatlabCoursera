function [counter]= letter_counter(filename)
file = fopen(filename);
if file == -1
    counter = -1;
else
data = fread(file,  '*char');
counter = sum(isletter(data));
end
