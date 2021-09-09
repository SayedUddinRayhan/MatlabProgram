% Design a fourth-order Butterworth bandpass filter with a center frequency W0= 24rad/s and bandwidth Bw=10rad/s.

% specify cutoff frequency and bandwidth
W0=24;
Bw=10;

[z,p,k]=buttap(4); % fourth-order Butterworth filter
[num,den]=zp2tf(z,p,k); % specify filter in polynomial form
[num,den]=lp2bp(num,den,W0,Bw); % convert lowpass filter to bandpass filter
tf(num,den) % print the transfer function

W=0:pi/1000:20*pi;
H=freqs(num,den,W);
magnitude=abs(H);

% Plot the figure
plot(W/2/pi,magnitude)
title("Fourth-order Bandpass Butterworth filter","Color","m")
xlabel("W———>")
ylabel("H———>")
