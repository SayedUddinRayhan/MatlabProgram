
t=0:6; % Generate a vector from 0 to 6
y=dsolve('D2y+3*Dy+2*y=24','y(0)=10','Dy(0)=0');

% Plot the figure
ezplot(y,t) 
%fplot(y,[-2,0])
xlabel('t———>')
ylabel('y———>')
