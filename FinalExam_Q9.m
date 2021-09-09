function dy=finalExam_Q9(t,y)
dy=zeros(1,1);
dy=(y+3*t)/t^2;
end

% [t,y]=ode45('finalExam_Q9',[1,4],-2);
% plot(t,y)
% title('Output response')
% xlabel('t———>')
% ylabel('y(t)———>')