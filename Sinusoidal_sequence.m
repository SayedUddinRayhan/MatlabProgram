% Plot the sinusoidal sequence.
% x[n]= A*sin(w0n+phi) where A=2, 0<=n<=80, 0<w0<pi and 0<=phi<=2*pi

n=0:80; % Generate a vector from 0 to 80
A=2;
w0=pi;
phi=2*pi;

Xn=A*sin(w0*n+phi);

% Plot the generated sequence
stem(n,Xn)
title("Sinusoidal sequence","Color","r")
xlabel("n———>")
ylabel("Amplitude———>")
