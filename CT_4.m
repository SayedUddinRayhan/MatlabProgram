

function dy=ct_4(t,y)
dy=zeros(1,1);
dy=(-t*y)/sqrt(2-y^2);
end

% [t,y]=ode45('ct_4',[0,5],1);
% plot(t,y)
% title('Output response')
% xlabel('t')
% ylabel('y(t)')