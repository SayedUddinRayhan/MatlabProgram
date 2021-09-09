% Program for the generation of unit step sequence

n=0:4;
y=ones(1,5);
%y=[1 1 1 1 1];

% Plot the figure
subplot(1,1,1)
stem(n,y)
title('Unit step Sequence','Color','r')
xlabel('n———>')
ylabel('Amplitude———>')