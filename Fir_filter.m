% Digital FIR Filter Design and Simulation
% CODTECH Internship - Task 4

clc;
clear;
close all;

Fs = 1000;                 % Sampling frequency
t = 0:1/Fs:1;              % Time vector

% Input signal (low + high frequency)
x = sin(2*pi*50*t) + 0.5*sin(2*pi*200*t);

% FIR filter parameters
order = 20;
cutoff = 100;

% FIR Low Pass Filter
b = fir1(order, cutoff/(Fs/2), 'low');

% Filter output
y = filter(b, 1, x);

% Input signal
figure;
plot(t, x);
title('Input Signal');
xlabel('Time');
ylabel('Amplitude');

% Filtered output
figure;
plot(t, y);
title('Filtered Output Signal');
xlabel('Time');
ylabel('Amplitude');

% Frequency response
figure;
freqz(b, 1, 1024, Fs);
title('Frequency Response of FIR Filter');
