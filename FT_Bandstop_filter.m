% Design a fifth-order Butterworth bandstop filter with a center frequency W0= 20rad/s and bandwidth Bw=8rad/s.

% specify cutoff frequency and bandwidth
W0=20;
Bw=8;

[z,p,k]=buttap(5); % fifth-order Butterworth filter
[num,den]=zp2tf(z,p,k); % convert to polynomial form
[num,den]=lp2bs(num,den,W0,Bw); % convert lowpass filter to bandstop filter
tf(num,den) % print the transfer function

W=0:pi/1000:20*pi;
H=freqs(num,den,W);
magnitude=abs(H);

% Plot the figure
plot(W/2/pi,magnitude)
title("Fourth-order Bandstop Butterworth filter","Color","r")
xlabel("W———>")
ylabel("H———>")