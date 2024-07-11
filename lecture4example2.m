clc
clear all
close all

clear sound

[y, Fs] = loadCorruptedAudio("music1.mp3");

plot(y);

Y = fft(y);

plot(abs(Y))

Y(2121000:8100000) = 0;

gain = 5;
Y(1:170000) = Y(1:170000)*gain;
Y(end - 170000:end) = Y(end - 170000:end)*gain;

figure
plot(abs(Y))

y = real(ifft(Y));

sound(y, Fs)