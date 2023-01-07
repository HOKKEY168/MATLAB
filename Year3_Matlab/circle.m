function M = circle(x,y,r)
hold on
t=0:0.1:8;
xlabel= r * cos(t) + x;
ylabel= r * sin(t) + y;
M = plot(xlabel, ylabel);
hold off