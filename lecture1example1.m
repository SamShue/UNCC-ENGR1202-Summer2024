
homework = 90;
quiz = 70;
exam = 85;
lab = 100;

total = homework*0.10 + quiz*0.30 + (exam*0.40) + (lab*0.20);

disp("Your total grade is: " + total)

if total >= 90
    disp("You earned an A")
elseif total >= 80
    disp("You earned a B")
elseif total >= 70
    disp("You earned a C")
elseif total >= 60
    disp("You earned a D")
else
    disp("You failed")
end