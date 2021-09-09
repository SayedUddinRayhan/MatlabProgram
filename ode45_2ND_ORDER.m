% d2t= -w^2sin(θ)
% dy(1)=y2, dy(2)= -w^2sin(y1) 

function dy=ode45_2ND_ORDER(t,y)
dy=zeros(2,1);
omega=1;
dy(1) = y(2);
dy(2) = -omega*omega*sin(y(1));
end

% [t,y]=ode45('ode45_2ND_ORDER',[1,25],[1.0 1.0]);
% subplot(2,1,1)
% plot(t,y(:,1))
% subplot(2,1,2)
% plot(t,y(:,2))
