% Display of Sinusoidal sequence given by x(n)=1.5cosWon; 0<=n<=40
% a) Wo=0; b) Wo=0.2phi; c) Wo=0.9phi; d)Wo=1.4phi
% Using subplot command and using figure command.


n=0:40; % Generate a vector from 0 to 40
W0=0;
W1=0.2*pi;
W2=0.9*pi;
W3=1.4*pi;

X1 = 1.5*cos(W0*n);
X2 = 1.5*cos(W1*n);
X3 = 1.5*cos(W2*n);
X4 = 1.5*cos(W3*n);

% Plot the generated sequence
%figure(1)
subplot(2,2,1)
stem(n,X1)
title('Sinusoidal Sequence','Color','r')
xlabel('n———>')
ylabel('X1———>')

% Plot the generated sequence
%figure(2)
subplot(2,2,2)
stem(n,X2)
title('Sinusoidal Sequence','Color','g')
xlabel('n———>')
ylabel('X2———>')

% Plot the generated sequence
%figure(3)
subplot(2,2,3)
stem(n,X3)
title('Sinusoidal Sequence','Color','b')
xlabel('n———>')
ylabel('X3———>')

% Plot the generated sequence
%figure(4)
subplot(2,2,4)
stem(n,X4)
title('Sinusoidal Sequence','Color','m')
xlabel('n———>')
ylabel('X4———>')


