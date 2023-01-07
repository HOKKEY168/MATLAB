t=0:0.1:12;
A= 15*sin((2*pi*t)+(pi/4))+20*exp(-t);
B= 25*cos((pi*t)-(2*pi/3))- 15*exp(-5*t);
C= 10*sin((2*pi*t)-(pi/4))+5*cos((2*pi*t)-(pi/4));
D= 5*exp(-t).*sin((4*pi*t)-(3*pi/4))-10*exp(-5*t).*cos((3*pi*t)-(5*pi/4));
E= 50*exp(-t)+ tan(pi/4);

subplot(3,2,1);
plot(t,A);
title('A');
xlabel('time');
ylabel('Amplitude');
legend('15*sin((2*pi*t)+(pi/4))+20*exp(-t)');
text(1,2,'\rightarrow A(t)'); 
 
subplot(3,2,2);
plot(t,B);
title('B');
xlabel('time');
ylabel('Amplitude');
legend('25*cos((pi*t)-(2*pi/3))- 15*exp(-5*t)');
text(1,2,'\rightarrow B(t)'); 
 
subplot(3,2,3);
plot(t,C);
title('C');
xlabel('time');
ylabel('Amplitude');
legend('10*sin((2*pi*t)-(pi/4))+5*cos((2*pi*t)-(pi/4))');
text(1,2,'\rightarrow C(t)'); 
 
subplot(3,2,3);
plot(t,C);
title('C');
xlabel('time');
ylabel('Amplitude');
legend('10*sin((2*pi*t)-(pi/4))+5*cos((2*pi*t)-(pi/4))');
text(1,2,'\rightarrow C(t)'); 
 
subplot(3,2,4);
plot(t,D);
title('D');
xlabel('time');
ylabel('Amplitude');
legend('5*exp(-t).*sin((4*pi*t)-(3*pi/4))-10*exp(-5*t).*cos((3*pi*t)-(5*pi/4))');
text(1,2,'\rightarrow D(t)');

subplot(3,2,5);
plot(t,E);
title('E');
xlabel('time');
ylabel('Amplitude');
legend('50*exp(-t)+ tan(pi/4');
text(1,2,'\rightarrow E(t)');