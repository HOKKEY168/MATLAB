%HUT HOKKEY
%ID e20180335
f = @GA;                    
nvars = 2;                  % Number of variables
lb = [0 0];                 % lower bound of both variable
ub = [9 6];                 % upper bound of both constraints
A = [7 11; 10 8];           % 1st & 2nd LHS constraints coefficients
b = [77 80];                % 1st & 2nd RHS constraints coefficients
Aeq = [];                   % LHS Equality constraints
beq = [];                   % RHS Equality constraints

% Result
[x, fval] = ga(f,nvars,A,b,Aeq,beq,lb,ub);

% It is important to multiply the function value by -1 to find the real value
Fval = -1.*fval;

for q=1:nvars
        fprintf('\nValue of x%d = %d \n',q,x(q))
end
fprintf('\nThus Z = %d',Fval)