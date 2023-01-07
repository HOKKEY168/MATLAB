%%Write script of the equation TP01_ex1
clc;
clear;
%% input paramate
K = 1000;
T = 0.05;
t=0:0.0001:T;
%%Run Code
ck=@(k) 1/k;
for k=1:K
    xk(k,:)=ck(k)*sin(100*pi*k*t);
end
xt=sum(xk,1);
plot(t,xk(1,:));
hold on
plot(t,xt,'r:');
xlabel('time')
ylabel('Magnitude')
legend('First hamonic','composite signal')