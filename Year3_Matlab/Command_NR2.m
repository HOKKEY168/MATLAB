
%command
func = @(x) x^3 -5*x^2 +7*x -3;
dfunc= @(x) 3*x^2 -10*x +7;[root,ea,iter] = newton(func,dfunc,0.001,100)