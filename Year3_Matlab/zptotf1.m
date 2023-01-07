%Find
z=[-2 -4]';
p=[-1 -3 -5 -5];
k=10;
[NUM,DEN] = zp2tf(z,p,k);
[RR,PP,KK]=residue(NUM,DEN)
tf(NUM,DEN)
