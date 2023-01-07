%x[n]=omega[n+5]-2*omega[n-2]-3*omega[n-8]




%x(t) = 3r(t+ 3)−6r(t+ 1) + 3r(t)−3u(t−3);
t=0:0.01:8;
y=3*(t+3)-6*(t+ 1)+3*(t)-3*(t-3);
plot(t,y);