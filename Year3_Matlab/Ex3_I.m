%3.Obtain transfer function F(s) for a system with the following properties:

z=[-1 -2]';
p=[0 -4 -6];
k=5;
[NUM,DEN] = zp2tf(z,p,k);
[RR,PP,KK]=residue(NUM,DEN)
tf(NUM,DEN)