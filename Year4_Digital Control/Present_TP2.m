% TP2 shannon's Theorem 
clear 
clear all
f1 = 50 ;           % frequency of first harmonic
f2 = 2*f1;          % frequency of secord harmonic 
alpha = 3;          % constant value 
beta = 6 ;          % scaling factor
fmax = f2;          % Nyquist frequency in Hz
T0 = 1/f1;          % period of harmonic 
fs = beta*f2;       % simpling frequency
Ts = 1/fs;          % sampling time
T_dur = alpha*T0;   % duration of signal 
t = 0:Ts/1000:T_dur;% time index of analog signal 
tn = 0:Ts:T_dur;    % time index if dicrette time signal 
T2=Ts;
t_shift = T_dur/2;

% signal generation 
%% 1. analog signal is given by x_a(t)=cos(2*pi*f1*t)+1/2*cos(2*pi*t)
xat_fun =@(f1,f2,t)cos(2*pi*f1*t) + 1/2*cos(2*pi*f2*t);
xat = xat_fun(f1,f2,t);
xan = xat_fun(f1,f2,tn);

%% 2. reconstruction filter 
hrt_fun = @(t,Ts)sinc(t/Ts);
hrt = hrt_fun(t-t_shift,Ts);

%% reconstruction y_a
n = 0:length(tn)-1;
y = zeros(length(t),1);
for i = 1:length(t)
   hrt_tnp = hrt_fun(t(i)-n*Ts,Ts);
   y(i) = sum(xan.*hrt_tnp);
   
end

%% error 
error =(xat)'-y;
P_e_t = mean(error.*error);
display(P_e_t);

%% figure 
subplot(2,2,1);
hold on
plot (t,xat,'b');
plot (tn,xan,'ro');
xlabel('time(sec)');
ylabel('amlitude');
title ('siqnal generation');
legend ('analog signal','decrete signal');
grid on
hold off

subplot(2,2,2);
plot (t,hrt,'b');
xlabel('time(sec)');
ylabel('amlitude');
title ('reconstruction filter');
legend ('analog response');
grid on

subplot (2,2,3);
plot (t,y);
xlabel('time(sec)');
ylabel('amlitude');
title ('reconstruction');
legend ('signal')
grid on 

subplot(2,2,4);
plot (t,error);
xlabel('time(sec)');
ylabel('amlitude');
title ('error');
legend ('error signal');
grid on 






