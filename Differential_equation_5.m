% D2y+2*Dy=sin(x), y(0)=1, y'(0)=0
% plot the solution curve.
 
x=-2:4; % Generate a vector from -2 to 4
sol=dsolve('D2y+2*Dy=sin(x)','y(0)=1','Dy(0)=0','x');

% Plot the figure
ezplot(s,x) 
%fplot(s,[-2,0])
