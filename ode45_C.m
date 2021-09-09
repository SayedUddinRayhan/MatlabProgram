% t^2y'=y+3t
% y(1)=-2  over the interval 1<=t<=4

function dy=ode45_C(t,y)
dy=zeros(1,1);
dy=(1/t^2).*(y+3*t);
end

% [t,y]=ode45('ode45_C',[1,4],-2);
% plot(t,y,'+')
% xlabel('t')
% ylabel('y(t)')