function fixpt (func, x0, es, imax, ea);
xr = x0;
iter = 0;
while (1)
    xrold = xr;
    xr = func(xrold);
    
    iter = iter +1;
    if xr ~= 0;
        ea = abs((xr-xrold)/xr*100;
    elseif ea < es | iter >= imax, break, end 
    fprintf('%5d | %10.7f | %10.7f\n',iter,xr,ea));
end
root = xr;