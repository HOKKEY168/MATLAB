%Name: HUT HOKKEY
%ID: e20180335

%command
func = @(x) x^3 -5*x^2 +7*x -3;
dfunc= @(x) 3*x^2 -10*x +7;
[root, iter]= secant_2(func,dfunc,-1,0,0.0001,100)