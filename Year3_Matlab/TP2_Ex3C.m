t=-5:0.01:10;
Y=ramp(t,2,2.5)-ramp(t,5,0)+ramp(t,3,-2)+ustep(t,-4);
[Ye,Yo]=evenodd(t,Y);
% plot the even signal ye(t) of y(t).
subplot(2,2,1);
plot(t,Ye);
% plot the odd signal yo(t) of y(t).
subplot(2,2,2);
plot(t,Yo);
% plot the signal y(t).
subplot(2,2,3);
plot(t,Ye,'r',t,Yo);