clc;
clear all;
close all;

I = imread("image4.jpg");

figure
imshow(I)

I_blurred = I;
[rows, cols] = size(I);

I = double(I);
for ii = 2:(rows - 1)
    for jj = 2:(cols - 1)
        sum = I(ii - 1, jj - 1) + I(ii - 1, jj) + I(ii - 1, jj + 1) + ...
              I(ii, jj - 1) + I(ii, jj) + I(ii, jj + 1) + ...
              I(ii + 1, jj - 1) + I(ii + 1, jj) + I(ii + 1, jj + 1);
        sum = sum/9;
        I_blurred(ii,jj) = uint8(sum);
    end
end

figure
imshow(I_blurred)