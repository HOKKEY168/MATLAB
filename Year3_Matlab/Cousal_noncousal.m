t=-5:0.01:10;
x=ustep(t,0)- ustep(t,-1);

figure('Name','Output','Numbertitle','off');
plot(t,x);
figure('Name','Output_S1','Numbertitle','off');
plot(t-1,x);
