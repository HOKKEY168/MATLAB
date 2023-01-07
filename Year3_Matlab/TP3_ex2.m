%Using Matlab to find the solution and plot the graph of the differential equation
%2y"+y'-t.*exp(-t)=0;
%y"=s^2Y(s)-sy(0)-y'(0);
%y"=s^2Y(s)-y(0);

syms t s Y;
y_0=0;
y1_0=1;

Y2=power(s,2)*2*Y-s*y_0-y1_0;
Y1=s*Y-y_0;

y=Y2+Y1-(t*exp(t));

F=solve(y,Y);
f=ilaplace(F,s,t);

