t=-3:0.01:3;
%Input signal
x1=ustep(t,0)-ustep(t,-2);
x2=ustep(t,0)-ustep(t,-3);
x=2*x1+3*x2
w=2*x
figure('Name','Input','NumberTitle','off');
plot(t,w);
legend('Input');
%Output signal
y1=2*2*x1;
y2=3*2*x2;
y=y1+y2;
figure('Name','Output','NumberTitle','off');
plot(t,y);
legend('Output');
