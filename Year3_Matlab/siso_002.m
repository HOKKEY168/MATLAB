%y= x1(t)+x2(t)+.*x3(t);
t=0:0.01:4;
x1=ustep(t,0)-ustep(t,-3);
x2=t.*sin(t);
X3=t.*cos(t);
y=x1+(x2.*x3);
figure('Name','Output','Numbertitle','off');
plot(t,y);