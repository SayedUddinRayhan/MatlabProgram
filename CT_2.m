
% y[n]=0.0675x[n]+0.1349x[n-1]+0.0675x[n-2]+1.143y[n-1]+0.4128y[n-2]  
% where 0<=n<=50, x[n]=u[n], and initial conditions: y[-2] = 1, y[-1]=2

   

n = 0:50; % Generate a vector from 0 to 50
a = [1 -1.143 -0.4128]; % output coefficient of difference equation
b = [0.0675 0.1349 0.0675]; % input coefficient of difference equation
yi = [2 1]; % initial conditions of output

x=ones(size(n));
zi=filtic(b,a,yi);
y=filter(b,a,x,zi);

% Plot the output signal
subplot(2,1,1);
stem(n,y,'filled')
xlabel('n———>')
ylabel('y———>')
title('Output response','Color','r')



