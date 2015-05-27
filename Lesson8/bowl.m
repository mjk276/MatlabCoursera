function [output] = bowl(input)
len = length(input);
frame = 1;
frame_acc = 0;
score = zeros(1,10);
cont = 1;
while frame<11
    frame_acc = frame_acc + input(cont);
    if(input(cont)==10) %strike
        score(frame) = sum(input(cont:cont+2));
        frame = frame +1;
        frame_acc = 0;
    end
    
        
end