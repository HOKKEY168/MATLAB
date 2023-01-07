function [Ha,Hb,Hc,La,Lb,Lc] = fcn(u,pwm)

if u(1)==1
    Ha = 1*pwm;
else
    Ha = 0;
end
if u(1)==-1
    La = 1*pwm;
else
    La = 0;
end
if u(2)==1
    Hb = 1*pwm;
else
    Hb = 0;
end
if u(2)==-1
    Lb = 1*pwm;
else
    Lb = 0; 
end  
if u(3)==1
    Hc = 1*pwm;
else
    Hc = 0;
end
if u(3)==-1
    Lc = 1*pwm;
else
    Lc = 0; 
end