t=-5:0.01:5;
xt=exp(-2*t).*heaviside(t);
plot(t,xt, 'r-', 'LineWidth',2);
ax=gca;
