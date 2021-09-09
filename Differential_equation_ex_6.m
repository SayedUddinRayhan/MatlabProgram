% Dy=2y+t, y(0)=1
% plot the solution curve with independent variable(t) in [-2,0].
 
t=-2:0; t=-2:4; % Generate a vector from -2 to 4
s=dsolve('Dy=2*y+t','y(0)=1','t');

% Plot the figure
ezplot(s,t) 
%fplot(s,[-2,0])
