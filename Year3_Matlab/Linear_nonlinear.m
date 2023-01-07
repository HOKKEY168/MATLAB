t=-3:0.01:3;
x1=ustep(t,0)-ustep(t,-2);
x2=ustep(t,0)-ustep(t,-3);

%fumula S{a1x1(t)+a2x2(t)} = a1S{x1(t)}+a2S{x2(t)};

%Input Signal
x=2*x1+3*x2;
w=2*x;
figure('name','input','numbertitle','off');
plot(t,w);

%Output  Signal
y1 = 2*2*x1;
y2 =3*2*x2;
z=y1 +y2;
figure('name','output','numbertitle','off');
plot(t,z);
