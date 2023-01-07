%command
func = @(x) exp(-x)-x;
dfunc= @(x) -exp(-x)-1;[root,ea,iter] = newton(func,dfunc,0,0.001,100)
