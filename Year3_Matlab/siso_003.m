%y1(t)=(x1)^2(t);
%y2(t)=1-3*x1(t);
%x1(t)=t.*sin(t);

t=0:0.01:2*pi;
x1=t.*sin(t);

y1=(x1).^2;
figure('Name','input','NumberTitle','off');
plot(t,y1);

y2=1-3*x1;
figure('Name','Output','NumberTitle','off');
plot(t,y2);