syms t s Y;

%dy/dt=5sin(3t)-4y
%dy/dt+4y+5sin(3t);

K=laplace(5*sin(3*t));
y_0=0;

Y1+s*Y-y_0;
y=Y1+4*Y-K;
F=solve(y,Y);
f=ilaplace(F,s,t);



