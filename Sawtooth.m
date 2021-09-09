% Sawtooth signal
f=100; % Signal frequency in Hz
w=2*pi*f; % Signal frequency in rad/s
du=0.03; % Signal duration in seconds
fs=20000; % Sampling frequency in Hz
tiv=1/fs; % Time interval between samples
t=0:tiv:(du-tiv); % Time intervals sets

y=sawtooth(w*t); % Signal data set

% Plot the generated function
plot(t,y)
title("Sawtooth signl","Color","r")
xlabel("t———>")