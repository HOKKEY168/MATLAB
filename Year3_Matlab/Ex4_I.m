%4.Solve differential equation

syms t s X;
%x(2) + 2 x(1) + 10x = e^−t
%x_0=0 x1_0=0

K = laplace(exp(-t));
x_0=0;
x_1_0=0;
X1 = s *X - x_0 ;
X2 = s^2 * X -s*X - x_0 ;
x = X2 -2* X1 +10* X - K ;
F = solve (x,X )
f = ilaplace (F ,s , t )