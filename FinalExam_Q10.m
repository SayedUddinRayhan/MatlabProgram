function dx=finalExam_Q10(t,x)
dx=zeros(2,1);
dx(1)=x(2);
dx(2)=-t*x(1)+exp(t)*x(2)+3*sin(2*t);
end


%[t,x]=ode45('finalExam_Q10',[0 4],[2 8]);
%subplot(2,1,1)
%plot(t,x(:,1))
%xlabel('t———>')
%ylabel('dx(1)———>')
%title('Output response','Color','b')
%subplot(2,1,2)
%plot(t,x(:,2),'b')
%xlabel('t———>')
%ylabel('dx(2)———>')
%title('Output response','Color','r')
