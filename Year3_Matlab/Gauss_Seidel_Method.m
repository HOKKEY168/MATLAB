%HUT HOKKEY
%ID e20180335

% Gauss-Seidel method

n=input('Enter number of equations, n:  ');
A = zeros(n,n+1);
x1 = zeros(n);
tol = input('Enter the tolerance, tol: ');
m = input('Enter maximum number of iterations, m:  ');
A=[4 1 -1 0 0 0 0 0 3
   1 6 -2 1 -1 0 0 0 -6
   0 1 5 0 -1 1 0 0 -5
   0 2 0 5 -1 0 -1 -1 0
   0 0 -1 -1 6 -1 0 -1 12
   0 0 -1 0 -1 5 0 0 -12
   0 0 0 -1 0 0 4 -1 -2
   0 0 0 -1 -1 0 -1 5 2];
x1=[0 0 0 0 0 0 0 0];
k = 1;
 while  k <= m
    err = 0;
    for i = 1 : n
       s = 0;
       for j = 1 : n
          s = s-A(i,j)*x1(j);
       end
       s = (s+A(i,n+1))/A(i,i);
       if abs(s) > err
         err  = abs(s);
       end
       x1(i) = x1(i) + s;
    end
    
    if err <= tol
      break;
    else
      k = k+1;
    end
 end
