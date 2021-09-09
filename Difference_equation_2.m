% Write a MATLAB program to simulate the following difference equation 
% y[n]=-0.5y[n-1]+2x[n-1] for an input, x[n] = delta[n] and 
% initial conditions: y[-1] = 0
% (a) Find values of x[n], the input signal and y[n], the output signal 
% and plot these signals over the range, -2 = n = 10 
   

n = -2:10; % Generate a vector from -2 to 10
a = [1 0.5]; % output coefficient of difference equation
b = [0 2]; % input coefficient of difference equation
yi = 0; % initial conditions of output
%xi=0; % say initial condition of input
%x=2*n;
x=zeros(size(n));
%zi=filtic(b,a,yi,xi);
zi=filtic(b,a,yi);
y=filter(b,a,x,zi);

% Plot the output signal
subplot(2,1,1);
stem(n,y,'filled')
xlabel('n———>')
ylabel('y———>')
title('Output response','Color','r')

% Plot the input signal
subplot(2,1,2);
stem(n,x,'filled')
xlabel('n———>')
ylabel('y———>')
title('Input response','Color','b')



