%% Write script of the equation TP02
clc;
clear; close all;
%%input paramate
f1 = 50;
f2 = 2*f1;
fs = 5*f2;
T0 = 1/f1;
Ts = 1/fs;
alpha = 3;
Tdur = alpha*T0;
t = 0: Ts/1000: Tdur;
tn = 0: Ts : Tdur;

%% Signal​ Generation

xa_tfun= @(t,f1,f2) cos(2*pi*f1*t) + 0.5*cos(2*pi*f2*t);
x_nfun= @(n,f1,f2,Ts) cos(2*pi*f1*n*Ts) + 0.5*cos(2*pi*f2*n*Ts);
xa_t= xa_tfun(t,f1,f2);
x_n = xa_tfun(tn,f1,f2);
figure(1);
plot(t,xa_t,'r:'),hold on
stem(tn,x_n, 'b*')
xlabel('time(s)');
ylabel('amplitude');
legend('analog signal','discrete-time signal');
title('analog vs. discrete-time signal');
grid on
%% Reconstruction filter
tt= -Tdur: Ts/1000 : Tdur;
hr_tfun = @(t,Ts) sinc(t/Ts);
hr_t = hr_tfun(tt,Ts);
figure(2);
plot(tt,hr_t,'k')
xlabel('time(s)');
ylabel('amplitude');
title('Reconstuction filter');
grid on
%% Signal Reconstruction
n=0:length(x_n)-1;
xr = zeros(length(t),1);
for i = 1:length(t)
    hr_ti = hr_tfun((t(i)-n.*Ts),Ts);
    xr(i) = sum(x_n.*hr_ti);
end
figure(3);
plot(t,xr,'r');hold on
plot(t,xa_t,'b--');
xlabel('time(s)');
ylabel('amplitude');
title('Reconstuction Signal');
legend('Reconstructed signal','Original signal');
grid on
%% Error Calculation
err=xa_t' - xr;
Perr= mean(err.^2)