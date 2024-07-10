clc;
clear all;
close all;

Fs = 84000;

t = 0:1/Fs:5; % seconds
f1 = 5000;
f2 = 200;
A1 = 1;
A2 = 0.5;

y1 = A1*sin(t*2*pi*f1);
y2 = A2*sin(t*2*pi*f2);

y = y1 + y2;

sound(y, Fs)