%Name: HUT HOKKEY
%ID: e20180335

function [xr,iter,xe,error]=y(func,dfunc,xa0,x0,es,maxit)
if nargin < 3, error('at least 3 input arguments required'),end
if nargin < 4 | isempty(es), es=0.0001;end
if nargin <5 | isempty(maxit), maxit = 50;end
iter=0;xrold=x0;xa = xa0;
xr=xrold-(((xa -xrold)*(func(xrold)/dfunc(xrold)))/((func(xa)/dfunc(xa))-(func(xrold)/dfunc(xrold))));
    ea=abs(((xr-xrold)/xr));
while ea>es
    iter=iter+1;
    xa=xrold;
    xrold=xr;
    xr=xrold-(((xa -xrold)*(func(xrold)/dfunc(xrold)))/((func(xa)/dfunc(xa))-(func(xrold)/dfunc(xrold))));
    ea=abs((xr-xrold)/xr);
    fprintf('%5d | %10.7f | %10.7f | %10.7f\n',iter,xrold,xr,ea);
    xe(iter) = xr;
    error(iter) = ea;
    if ea<=es || iter >= maxit
        root = xr;
        break;
    end
end
fprintf('root is %f\n',xr)
end

%command
%func = @(x) x^3 -5*x^2 +7*x -3;
%dfunc= @(x) 3*x^2 -10*x +7;
%[root, iter]= secant_2(func,dfunc,-1,0,0.0001,100)