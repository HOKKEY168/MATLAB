syms t s Y;
K=laplace(5*t,s);
y_0=-1; y_1=2;

Y1=s*Y- y_0;
Y2=s*Y1- y_1;

y=Y2-10*Y1+9*Y-K;

F= solve(y,Y);
f=ilaplace(F,t) 

