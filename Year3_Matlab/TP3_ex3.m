%Using simulink to find the solution of the differential equation 
%dy/dt=t*y/5-exp(-5*t);
 %dy/dt-t*y/5=-exp(-5*t);
syms t s Y;
 K=laplace(-exp(-5*t));
 y_0=1;
 Y1=s*Y-y_0;
 
y=Y1-(t*Y)/5+K;
 
F=solve(y,Y);
f=ilaplace(F,s,t);
 
 