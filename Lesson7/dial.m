function [output] = dial(input)
data = ['ABC'; 'DEF'; 'GHI'; 'JKL'; 'MNO'; 'PRS'; 'TUV'; 'WXY'];
output = input;
    for k = 1:length(input)
        if input(k)< '0' || input(k)>'9'
            [p, q] = find(data==input(k));
            if ~isempty(p)
                output(k) = num2str(p+1);
            elseif input(k)=='#' || input(k)=='*'
                output(k) = input(k);
            elseif input(k)=='(' || input(k)==')' || input(k)=='-' || input(k)== ' '
                output(k) = ' ';
            else
                output = [];
                break;
            end
        else
            output(k) = input(k);
        end
    end