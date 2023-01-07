syms x;
fun=input('Enter the function as a variable of x');
f=inline(fun);

z=diff(f(x));
f1=inline(z);

x0=input('Enter the intial value of interval ');
x=x0;
for i=0:inf
    y=x;
    x=y-(f(x)/f1(x));
    if x==y
        break
    end
end
fprintf('The total number of iterations are: ');
i
x