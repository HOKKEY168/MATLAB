t=-5:0.01:15; %plot the function of following signal.
% (a) x(t) = 3r(t+ 3) - 6r(t+ 1) + 3r(t) - 3u(t?3).
X=ramp(t,3,3)-ramp(t,-3,1)+ramp(t,3,0)-3*ustep(t,-3);
subplot(2,1,1);
plot(t,X);
%(b) y(t) =r(t+ 5)-r(t+ 3)-r(t+ 2)+r(t)+u(t)+u(t-2)+u(t-5)-3u(t-8).
Y=ramp(t,1,5)-ramp(t,-1,3)-ramp(t,-1,2)+ramp(t,1,0)+ustep(t,0)+ustep(t,-2)+ustep(t,-5)-3*ustep(t,-8);
subplot(2,1,2);
plot(t,Y);
