

function dy=ct_5(~,x)
dy=zeros(2,1);
xp(1)=x(2)-x(1)^2;
xp(2)=-x(1)-2*x(1)*x(2);
end

%[t,x]=ode45('ct_5',[0,10],[0 1]);
%subplot(2,1,1)
%plot(t,x(:,1))
%xlabel('t');
%ylabel('xp(1)');
%title('Output response','Color','b');
%subplot(2,1,2)
%plot(t,x(:,2));
%xlabel('t———>');
%ylabel('xp(2)———>');
%title('Output response','Color','r');

