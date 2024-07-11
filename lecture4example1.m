clc
clear all
close all

Fs = 500; % sampling freq (samples per second)
time = 3;   % time in seconds

t = 0:(1/Fs):(time - 1/Fs);

f1 = 1;
f2 = 3;
f3 = 5;

A1 = 1;
A2 = 3;
A3 = 2;

y1 = A1*sin(2*pi*t*f1);
y2 = A2*sin(2*pi*t*f2);
y3 = A3*sin(2*pi*t*f3);

y = y1 + y2 + y3;

plot(t, y); 
xlabel('time(s)'); ylabel('amplitude');

Y = fft(y);

figure
frequencies = (0:1:(length(Y)/2 - 1)) * Fs/length(Y);
plot(frequencies, abs(Y(1:end/2))); 
xlabel('frequency (Hz)'); ylabel('magnitude');