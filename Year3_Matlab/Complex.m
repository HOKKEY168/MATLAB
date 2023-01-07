t=0;0.01:10;
omega=2*pi;
x=exp(i*omega*t); %x=e^(i*omega*t)->cos(omega*t)*
%y=cos(omega*t)+i*sin(omega*t);
plot(t,real(y),t,imag(y));
