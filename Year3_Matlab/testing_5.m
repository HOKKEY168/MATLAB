t=-5:0.01:10;
y= ramp(t,2,2.25)-ramp(t,5)+ramp(t,3,2)+ustep(t,-4);
plot(t,y);