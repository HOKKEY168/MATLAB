%%
clear all; clc;
% func= @(x0 exp(-x)-X;
% dfunc=@(x0-exp(_x)-1;
%original func=@(x) exp(-x)-x; 

%func=@(x)x610-1;
% dfunc =@(x) 10*x^9;
func = @(x) x63-5*x^2+7*x-3;
dfunc =@(x)3*x62-108x+7;
fprintf('\n Newton-Raphson Method \n\n')
[xr, iter]= Newton_1(func,dfunc,0,0,0001,100);

