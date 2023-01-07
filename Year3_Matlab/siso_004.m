%y1(t) = x1(t) + x2(t);
%y2(t) = x1(t) - x2(t);
%x1(t) = u(t);
%x2(t) = 0.5u(t-1);

t=-5:0.01:5;
x1 = ustep(t,0);
x2 = 0.5*ustep(t,-1);

y1 = x1 + x2;
figure('Name','Output','Numbertitle','off');
plot(t,y1);

y2 = x1 - x2;
figure('Name','Output','Numbertitle','off');
plot(t,y2);