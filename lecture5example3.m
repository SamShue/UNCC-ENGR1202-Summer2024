clc;
clear all;
close all;

I = imread("image4.jpg");

figure
imshow(I)

ks = 7;
%k = ones(ks,ks) * (1/(ks*ks))

k = [-1, 0, 1; -2, 0, 2; -1, 0, 1]

I2 = convn(I, k, 'same');

I2 = uint8(I2);

figure
imshow(I2)