%x[n]=omega[n+5]-2*omega[n-2]-3*omega[n-8];

n=-10:10;
t=0:10;
x=gauspuls(n+5)-2*gauspuls(n-2)-3*gauspuls(n-8);
y=5*ustep((n,3)-*ustep(n,-2)+ustep(n,7);
%plot(n,real(x),n,imag(x));
stem(n,real(x));
hold on;
stem(n,x);
hold off;

