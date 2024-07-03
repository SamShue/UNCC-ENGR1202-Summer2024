clc;
clear all;
close all;

% y = zeros(1,10)
% for t = 1:length(y)
%     y(t) = 50 * (2^t)
% end

t = 1:0.25:10;
y = 50.*(2.^t)

plot(t,y)
title("Bacterial Growth Over Time")
xlabel("Time (hrs)")
ylabel("Number of Bacterial Cells")