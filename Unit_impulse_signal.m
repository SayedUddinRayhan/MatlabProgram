% Program for the generation of unit impulse signal

n=-2:1:2;
y=[zeros(1,2),ones(1,1),zeros(1,2)];
% y=[0 0 1 0 0];

% Plot the figure
subplot(1,1,1)
stem(n,y)
title('Unit Impulse Signal','Color','r')
xlabel('n———>')
ylabel('Amplitude———>')