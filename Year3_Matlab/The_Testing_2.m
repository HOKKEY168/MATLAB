%y=ramp(t,5)-ramp(t,3)-ramp(t,2) +ramp(t) +ustep(t) +ustep(t,-2) +ustep(t,-5)-3*ustep(t-8);
t=-5:0.01:15;
%plot(n,real(y),n,imag(y));
stem(n,y);y=ramp(t,5)-ramp(t,3)-ramp(t,2) +ramp(t) +ustep(t) +ustep(t,-2) +ustep(t,-5)-3*ustep(t-8);

hold on;
stem(n,y);
hold off;
