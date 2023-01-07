%Name: HUT HOKKEY
%ID: e20180335
%Newton_Raphson_Function
function [root,ea,iter] = newton(func,dfunc,x0,es,maxit,varargin)
if nargin < 3, error('at least 3 input arguments required'),end
if nargin < 4 | isempty(es), es=0.0001;end
if nargin <5 | isempty(maxit), maxit = 50;end

iter = 0;x0=0; xr = x0; ea = 100;
while (1)
    xrold = xr;
    xr = xrold-func(xrold)/dfunc(xrold);
    iter = iter +1;
    if xr ~= 0, ea = abs((xr-xrold)/xr)*100;end
    if ea <= es | iter >= maxit, break, end
    fprintf('%5d | %10.7f | %10.7f\n',iter,xr,abs(func(xr)));
end
root = xr; 
fx = func(xr);
