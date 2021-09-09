% Program for the generation of exponential sequence

n=0:4;
A=5;
y=exp(-A.*n);

% Plot the figure
subplot(1,1,1)
stem(n,y)
title('Exponential Sequence','Color','r')
xlabel('n———>')
ylabel('Amplitude———>')