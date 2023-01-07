% ITC I4EA Group 1
% Subject:  DSP Programming
% Date:     18/03/2022

% Example 1
% Parameterization
K = 5;  %harmonic numbers
c = @(k) 1/k;   
fmax=50*K;  %maximum frequency in Hz
fmin=50; %for K=1
Fs=3*fmax;  %sampling frequency in Hz
Ts=1/Fs;    %sampling time in sec
t = 0:Ts:3/fmin;    %Time period

% Simulation
for k = 1:K
    xk(k,:)=c(k)*sin(100*pi*k*t);   %store data in matrix form
end
xt=sum(xk,1);

clf;
figure(1)
plot(t,xk(1,:),'r-.'); hold on;
plot(t,xt,'b'); grid on;
xlabel('Time [sec]');
ylabel('Magnitude');
legend('Sine-wave', 'Composite Signal');
title('x(t)')

% Exercise 3,4,5
%testing unit step function
n = -10:20;
y1=unitstep(n);
y2=unitstep(n-5);   %unit step shifted by 5 unit
y = y1+y2;      %exercise 5 x2

figure(2)
stem(n,y); grid on;

%testing impulse sequence function
x1 = impseq(n);
x2 = impseq(n-2);   %Impulse sequence shifted to right by 2 unit
x3 = impseq(n-5);   %Impulse sequence shifted to right by 5 unit
x4 = impseq(n-8);   %Impulse sequence shifted to right by 8 unit
x = 5*x1-2*x2+3*x3+.5*x4;

figure(3)
stem(n,x); grid on;

% Exercise 5
%Adding and multiplication
x5 = impseq(n+4);   %Impulse sequence shifted to left by 4 unit
z1 = 2*x3-4*x5;
z2 = y1+y2;

%% Exercise 6,7
% Signal Shifting function
padd_idx = 5;
xn = [zeros(1,padd_idx) 1 2 3 4 5 6 7 6 5 4 3 2 1 zeros(1,padd_idx)]';
n = -2-padd_idx:10+5;
n0= -2;
y=circshift(xn,n0);
figure(3);
stem(n,xn,'r*');hold on;
stem(n ,y,'bo--');grid on;
legend('Orignal signal',['Shifted signal n_0 = ',num2str(n0)])
xlabel('sample [n]')
ylabel('Magnitude')
title('Time-shifted operation')

x1_n = 2*circshift(xn,5) - 3*circshift(xn,-4);
figure(4)
stem(n,xn,'r*');hold on;
stem(n ,x1_n,'bo');grid on;
legend('x(n)','x_1(n)')
xlabel('sample [n]')
ylabel('Magnitude')
title('Combined signal')

x2_n = xn.*circshift(xn,-4);
figure(5)
stem(n,xn,'r*');hold on;
stem(n ,x2_n,'bo');grid on;
legend('x(n)','x_2(n)')
xlabel('sample [n]')
ylabel('Magnitude')
title('Combined signal')