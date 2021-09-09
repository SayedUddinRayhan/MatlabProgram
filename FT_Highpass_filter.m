% Design a sixth-order Butterworth highpass filter with a cutoff frequency of 1000 Hz.


[z,p,k]=buttap(6); % sixth-order Butterworth filter
[num,den]=zp2tf(z,p,k); % convert to polynomial form
tf(num,den) % print the transfer function

Wc=2*pi*1000;
[num,den]=lp2hp(num,den,Wc); % convert lowpass filter to highpass filter

W=0:pi/100:10*pi;
H=freqs(num,den,W);
magnitude=abs(H);

% Plot the figure
plot(W/2/pi,magnitude)
title("Sixth-order Butterworth highpass filter","Color","m")
xlabel("W———>")
ylabel("H———>")