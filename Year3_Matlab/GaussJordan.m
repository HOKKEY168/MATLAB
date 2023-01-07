%HUT HOKKEY
%ID e20180335
function [xr,iteration,xe,error] = GaussJordan(A,b)
[m,n] = size(A); % size of matrix
if m~=n, errordig ('Matrix A must be square'); end
nb=n+1;
Aug = [A b];
% Forward elimation
for k=1:n-1
    %Partial pivoting
    [big,i]=max(abs(Aug(k:n,k)));
    ipr=i+k-1;
    if ipr~=k
        Aug([k,ipr],:)=Aug([ipr,k],:);
    end
    for i = k+1:n
        factor = Aug(i,k)/Aug(k,k);
        Aug (i,k:nb) = Aug(i,k:nb)-factor*Aug(k,k:nb);
    end
end

for i =1:n
    factor = Aug(i,i);
    Aug(i,:)=Aug(i,:)/factor;
end
for k = 1:n-1
    j=k;
    for i = 1:n-k
        factor = Aug(i+k-j,i+k);
        Aug(i,:) = Aug(i,:)-Aug(i+k,:)*factor;
    end
end
disp('Jordan :');
disp(Aug);
xr = Aug(:,n+1);
disp('Root :');
disp(xr);
iteration = 0;
xe = xr;
error(1:n) = 0;
end


% A=[3 -0.1 -0.2;0.1 7 -0.3;0.3 -0.2 10];
% b=[7.85;-19.3;71.4];
% [xr,ilteration,xe,error] = GaussJordan(A,b)