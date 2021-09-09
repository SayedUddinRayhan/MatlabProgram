% Write a MATLAB program to simulate the following difference equation 
% 8y[n]-2y[n-1]-y[n-2] = x[n] + x[n-1] for an input, x[n] = 2n u[n] and 
% initial conditions: y[-1] = 0 and y[0] = 1
% (a) Find values of x[n], the input signal and y[n], the output signal 
% and plot these signals over the range, -1 = n = 10 
   

n = -1:10; % Generate a vector from -1 to 10
a = [8 -2 -1]; % output coefficient of difference equation
b = [1 1 0]; % input coefficient of difference equation
yi = [1 0]; % initial conditions of output
%xi=0; % say initial condition of input
%x=2*n;
x=2.*n.*ones(size(n));
%x=2.*n.*ones(1,n);
%zi=filtic(b,a,yi,xi);
zi=filtic(b,a,yi);
y=filter(b,a,x,zi);

% Plot the output signal
subplot(2,1,1);
stem(n,y,'fill')
xlabel('n———>')
ylabel('y———>')
title('Output response','Color','r')

% Plot the input signal
subplot(2,1,2);
stem(n,x,'filled')
xlabel('n———>')
ylabel('y———>')
title('Input response','Color','b')



