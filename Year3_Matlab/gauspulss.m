%y(t)=5u(t+4);
function y = gauspulss(t,shift)
% generation of unit step
% t: time
% ad : advance (positive), delay (negative)
% USE y = ustep(t,ad)
   % t=-5:8;
    N = length(t); % N=14;
    y = zeros(1,N); %initialization;[0 1-14]
 for i = 1:N, % 2->14
        if t(i)==-shift,  %t(2)=-4  shift=4;
        y(i) = 1;
        end
 end 