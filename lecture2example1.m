clc;
clear all
close all

quiz_grades = [90, 100, 80, 70, 100, 90];
homework_grades = [100, 100, 90];
exam_grades = [90, 80];

total = 0;
for ii = 1:length(quiz_grades)
    total = total + quiz_grades(ii);
end
quiz_avg = total/length(quiz_grades);

hw_avg = sum(homework_grades)/length(homework_grades);
exam_avg = mean(exam_grades);

class_avg = exam_avg * 0.4 + hw_avg * 0.30 + quiz_avg * 0.30