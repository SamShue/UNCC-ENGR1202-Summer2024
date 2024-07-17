clc;
clear all;
close all;

I = imread("image1.jpg");

I = I * 4.5;

imshow(I)

figure
imhist(I)