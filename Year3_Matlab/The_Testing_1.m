%x=3*ramp(t+3)-6*ramp(t+1)+3*ramp(t)-3*ustep(t-3);
t=-5:0.01:15;
x= 3*ramp(t+3)-6*ramp(t+1)+3*ramp(t)-3*ustep(t-3);      
%plot(n,real(x),n,imag(x));
stem(n,x);
hold on;
stem(n,x);
hold off;
