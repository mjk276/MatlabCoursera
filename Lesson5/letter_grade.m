function [letter_grade]= letter_grade(score)
if score >= 91
    letter_grade = 'A';
elseif score >=81
    letter_grade = 'B';
elseif score>=71
    letter_grade = 'C';
elseif score >= 61
    letter_grade = 'D';
else
    letter_grade = 'F';
end