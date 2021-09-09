%Frequency analysis of the amplitude modulated discrete-time signal
% (a) sketch the signals x(n), xc(n) and xam(n), 0<=n<=255

f1=1/128;
f2=5/128;
n=0:255;
fc=50/128;

x=cos(2*pi*f1*n)+cos(2*pi*f2*n);
xc=cos(2*pi*fc*n);
xamp=x.*xc;

% Plot the figure
subplot(2,2,1)
plot(n,x)
% stem(n,x)
title('x(n)')
xlabel('n———>')
ylabel('amplitude———>')

% Plot the figure
subplot(2,2,2)
plot(n,xc)
% stem(n,xc)
title('xc(n)')
xlabel('n———>')
ylabel('amplitude———>')

% Plot the figure
subplot(2,2,3)
plot(n,xamp)
% stem(n,xamp)
xlabel('n———>')
ylabel('amplitude———>')


