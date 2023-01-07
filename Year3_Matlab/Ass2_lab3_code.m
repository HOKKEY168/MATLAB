%find 
syms t s;
NUM=[1 8 23 3 28 3];
DEN=[0 0 1 6 8 0];
Fs=tf(NUM,DEN);
[R,P,K]=residue(NUM,DEN)
%Fs-->Ft
%Ft=
ilaplace(R(1)/(s-P(1)))
ilaplace(R(2)/(s-P(2)))
ilaplace(R(3)/(s-P(3)))
A=ilaplace(s*s+2*s+3)

