%HUT HOKKEY
%ID e20180335
func = @(x) exp(-x)-x;
[root,fx,ea,iter] = Fixpt(func,0,5,0.0001,100)