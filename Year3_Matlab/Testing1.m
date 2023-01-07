% ax*2+bx+c=0
%x1 x2
a=input('input a=');
b=input('input b=');
c=input('input c=');

delta= b^2-4*a*c;
if (delta==0)
    x1=x2 =-b/2*a;
    disp x1;
    disp x2;
elseif (delta>0)
    x1= (-b+sqrrt(delta))/2a;
    x2= (-b-sqrrt(delta))/2a;
    disp x1;
    disp x1;
elseif (delta<0)
 x1= (-b+sqrrt(delta)i)/2a;
 x2= (-b-sqrrt(delta)i)/2a;
end
    
   
    
