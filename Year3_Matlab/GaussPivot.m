
%HUT HOKKEY
%ID e20180335
function [x,A, b]= GaussPivot(A,b)
if nargin < 2, error('at least 2 input arguments required'),end

[m,n] = size(A);
if m~=n, error('Matrix A must be square'); end 
nb= n+1; 
Aug= [A b];
iter=0;

%forward elimination
iter= iter+1;
for k= 1:n-1

    %partial pivoting
    
    [big,i]= max(abs(Aug(k:n,k)));
    ipr= i+k-1;
    if ipr~=k
        Aug([k,ipr],:)= Aug([ipr,k],:);
    end
    for i= k+1:n
            
        factor = Aug(i,k)/Aug(k,k);
        Aug(i,k:nb)= Aug(i,k:nb)-factor*Aug(k,k:nb);
    end
    
end

%back substitution
x= zeros(n,1);
x(n)= Aug(n,nb)/Aug(n,n);
for i= n-1:-1:1
    x(i)= (Aug(i,nb)-Aug(i,i+1:n)*x(i+1:n))/Aug(i,i);
    y(iter,:)= x;
end


fprintf(' The first answer is x1 , x2:\n');
disp(y);
fprintf(' The answer according to significant figures\n')
fprintf('%5d  |',iter+2);
fprintf('%10.3f |',x);
fprintf('\n%5d  |',iter+3);
fprintf('%10.4f |',x);
fprintf('\n%5d  |',iter+4);
fprintf('%10.5f |',x);
fprintf('\n%5d  |',iter+5);
fprintf('%10.6f |',x);
fprintf('\n%5d  |',iter+6);
fprintf('%10.7f |',x);
fprintf('\n');