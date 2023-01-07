%y= ramp(t,2,2.25)-ramp(t,5)+ramp(t,3,-2)+ustep(t;-4);
t=-5:0.01:10;
y= ramp(t,2,2.25)-ramp(t,5)+ramp(t,3,2)+ustep(t,-4);
%plot(n,real(x),n,imag(x));
stem(n,x);
hold on;
plot(t,y);
stem(n,x);
hold off;
