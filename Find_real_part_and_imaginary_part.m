% Find real part and imaginary part for the following equation
% X[n]=e^(-1/0.2+j*pi/6)n for 0<=n<=50

n=0:50; % Generate a vector from 0 to 50
Xn= exp(-1/0.2+j*pi/6)*n;

rlPart= real(Xn);
imPart= imag(Xn);

% Plot the generated sequence
figure(1)
stem(n,rlPart,"filled")
title("Real part of the signal","Color","r")
xlabel("n———>")
ylabel("Real part———>")

figure(2)
stem(n,imPart,"filled")
title("Imaginary part of the signal","Color","m")
xlabel("n———>")
ylabel("Imaginary Part———>")



