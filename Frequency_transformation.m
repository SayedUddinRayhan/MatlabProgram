% Design a fourth-order Butterworth lowpass filter with a cutoff frequency of 5 Hz.
%   > Design a fourth-order normalized Butterworth filter using buttap.
%   > Apply the frequency transformation lp2lp to achieve the desired specifications.

[z,p,k]=buttap(4); % fourth-order Butterworth filter

%Transfer function
[num,den]=zp2tf(z,p,k); % convert to polynomial form

tf(num,den) % print the transfer function 

Wc=2*pi*5;
[num,den]=lp2lp(num,den,Wc); % convert lowpass-to-lowpass

W=0:pi/100:10*pi;
H=freqs(num,den,W);
magnitude=abs(H);

% Plot the figure
plot(W/2/pi,magnitude)
title("Fourth-order Butterworth lowpass filter: fc= 5Hz","Color","r")
xlabel("W———>")
ylabel("H———>")