%Example
d4=5;
d5=4;
d6=9;
d7=8;

if((mod(d4+d5+d6+d7,5)-2)==0)
    a=-3;
else
    a=mod(d4+d5+d6+d7,5)-2;
end
if(mod(d4+d5,2)==1)
    b=1;
else
    b=-1;
end
c=mod(d6+d7,5)-2;
d=mod(d4+d5,5);
e=mod(d6+d7,5)-3;

a
b
c
d
e
