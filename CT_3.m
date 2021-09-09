
 
t=0:5; % Generate a vector from 0 to 5
s=dsolve('D2y+2*Dy+5*y=20','y(0)=0','Dy(0)=10','t');

% Plot the figure
ezplot(s,t) 
title('Output response','Color','b')
xlabel('t———>')
ylabel('s(t)———>')


