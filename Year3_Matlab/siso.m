t=0:0.01:3;
x=t.*cos(2*pi*t);

figure('Name','input','NumberTitle','off');
plot(t,x);
legend('x(t)');

figure('Name','output','NumberTitle','off');
plot(t+2,x)
legend('y(t)');



