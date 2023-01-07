function [root,fx,ea,iter] = fixpt(func,xl,xu,es,maxit)
if nargin <= 3, error('at least 3 input arguments required'),end
test = func(xl)*func(xu);
if test > 0, error('no sign change'),end
if nargin < 4 | isempty(es), es=0.001;end
if nargin <5 | isempty(maxit), maxit = 50;end


iter = 0; xr = x0; ea = 100; g(x)= exp(-x)
while (1)
    xrold = xr;
    xr = g(x0)
    iter = iter +1;
    if xr ~= 0, ea = abs((xr-xrold)/xr)*100;end
    test = func(xl)*func(xr);end
    if ea < es | iter >= maxit, return, end
    fprintf('%5d | %10.7f | %10.7f\n',iter,xr,abs(func(xr)));
end