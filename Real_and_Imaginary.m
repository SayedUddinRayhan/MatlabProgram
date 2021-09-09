% X[n]= -3.6e^(-0.5+j*pi/4)^n for 0<=n<=82
% Plot this complex exponential sequence and find real part and imaginary part.

n=0:82; % Generate a vector from 0 to 82
Xn= -3.6*exp(-0.5+j*pi/4).^n;

rlPart= real(Xn);
imPart= imag(Xn);

% Plot the generated sequence
figure(1)
stem(n,rlPart,"filled")
title("Real part of the signal","Color","r")
xlabel("n———>")
ylabel("Real part———>")

% Plot the generated sequence
figure(2)
stem(n,imPart,"filled")
title("Imaginary part of the signal","Color","m")
xlabel("n———>")
ylabel("Imaginary Part———>")
