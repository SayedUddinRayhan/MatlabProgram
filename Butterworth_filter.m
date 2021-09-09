% Find the poles, zeros, and the gain factor of normalized 5th order butterworth filter
% Butterworth low pass filter
[z,p,k]=buttap(5);

%Transfer function
[num,dem]=zp2tf(z,p,k)