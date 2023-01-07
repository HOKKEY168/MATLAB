%HUT HOKKEY
%ID e20180335
function [xr,iteration,xe,error] = LU(A,b)
[m,n] = size(A); % size of matrix
if m~=n, errordig ('Matrix A must be square'); end
nb=n;
Aug = A;
F=A;
for k=1:n-1
    [big,i]=max(abs(Aug(k:n,k)));
    ipr=i+k-1;
    if ipr~=k
        Aug([k,ipr],:)=Aug([ipr,k],:);
    end
    for i = k+1:n
        factor = Aug(i,k)/Aug(k,k);
        Aug (i,k:nb) = Aug(i,k:nb)-factor*Aug(k,k:nb);
        g(i,k) = F(i,k)/Aug(k,k);
    end
    F= Aug;
end
u = Aug;
c = zeros(n,1);
l = [g c]+eye(n);
lb = [l b];
nb = n+1;
disp('U = ');
disp(u);
disp('L = ');
disp(l);
d = zeros(n,1);
d(1) = lb(1,nb);
for i = 2:n
    d(i) = (lb(i,nb))-lb(i,1:i-1)*d(1:i-1);
end
ud = [u d];
xr = zeros(n,1);
xr(n) = ud(n,nb)/ud(n,n);
for i = n-1:-1:1
    xr(i) = (ud(i,nb)-ud(i,i+1:n)*xr(i+1:n))/ud(i,i);
end
disp('ROOT = ');
disp(xr);
iteration = 0;
xe = xr';
error(1:n)= 0 ;
end


% A=[3 -0.1 -0.2;0.1 7 -0.3;0.3 -0.2 10];
% b=[7.85;-19.3;71.4];
% [xr,iteration,xe,error] = LU(A,b)
