function dx=finalExam_Q11(t,x)
dx=zeros(2,1);
dx(1)=x(2);
dx(2)=-x(1)*x(2)-x(1);
end


%[t,x]=ode45('finalExam_Q11',[0 10],[0 1]);
%subplot(3,1,1)
%plot(t,x(:,1),'b')
%xlabel('t———>')
%ylabel('dx(1)———>')
%title('Output response','Color','b')
%subplot(3,1,2)
%plot(t,x(:,2),'b')
%xlabel('t———>')
%ylabel('dx(2)———>')
%title('Output response','Color','r')
%subplot(3,1,3)
%plot(x(:,1),x(:,2))
%xlabel('y———>')
%ylabel("y'———>")
%title('Output response','Color','g')