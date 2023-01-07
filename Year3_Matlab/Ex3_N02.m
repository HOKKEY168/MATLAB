%find 
syms t s;
NUM=[0 5 15 10];
DEN=[1 10 24 0];
Fs=tf(NUM,DEN);
[R,P,K]=residue(NUM,DEN)
%Fs-->Ft
%Ft=
ilaplace(R(1)/(s-P(1)))
ilaplace(R(2)/(s-P(2)))
ilaplace(R(3)/(s-P(3)))
A=ilaplace(s*s+4*s+6)

