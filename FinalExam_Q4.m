% Design and implement a model of Butterworth analog band pass filter using the following parameter:
% Passband ripple=0.36dB; stopband ripple=36dB; passband frequency=1500Hz; stopband frequency=2000Hz and sampling frequency=6000Hz.


rp=input('Enter the passband ripple: ');
rs=input('Enter the stopband ripple: ');
wp=input('Enter the passband frequency: ');
ws=input('Enter the stopband frequency: ');
fs=input('Enter the sampling frequency: ');

w1=2*wp/fs;
w2=2*ws/fs;

[n]=buttord(w1,w2,rp,rs); 
wn=[w1,w2];
[b,a]=butter(n,wn,'bandpass','s');

w=0:0.01:pi;
[h,wout]=freqs(b,a,w);
mag=20*log10(abs(h));
ang=angle(h);

% Plot the Amplitude Response figure
subplot(2,1,1)
plot(wout,mag)
title('Butterworth Bandpass Analog Filter Amplitude Response','Color','r')
xlabel('Normalised frequency———>')
ylabel('Gain in db———>')

% Plot the Phase Response figure
subplot(2,1,2)
plot(wout,ang)
title('Butterworth Bandpass Analog Filter Phase Response','Color','m')
xlabel('Normalised frequency———>')
ylabel('Phase in radians———>')
