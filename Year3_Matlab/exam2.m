t=0:0.1:8;
x1=50*sin(2*pi*t);
x2=100*(exp(-t)).*sin(4*pi*t);
x3=150*cos(6*pi*t);
x4=200*(exp(-3*t)).*cos(8*pi*t);

subplot(2,2,1);
plot(t,x1,'m-');
title('x1');
xlabel('time t');
ylabel('value of x1');
legend('50*sin(2*pi*t)');
text(1,2,'\rightarrow x1(t)','color','r');
grid;
subplot(2,2,2);
plot(t,x2,'g-');
title('x2');
xlabel('time t');
ylabel('value of x2');
legend('100*(exp(-t)).*sin(4*pi*t))');
text(1,2,'\rightarrow x2(t)','color','b');

subplot(2,2,3);
plot(t,x3,'k-');
title('x3');
xlabel('time t');
ylabel('value of x3');
legend('150*cos(6*pi*t)');
text(1,2,'\rightarrow x3(t)','color','g');


subplot(2,2,4);
plot(t,x4,'p-');
title('x4');
xlabel('time t');
ylabel('value of x4');
legend('200*(exp(-3*t)).*cos(8*pi*t)');
text(1,2,'\rightarrow x4(t)','color','g');

