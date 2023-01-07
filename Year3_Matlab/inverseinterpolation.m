%HUT Hokkey
%ID e20180335

function b1 = inverseinterpolation(f,xl,xu)
a1 = xl; b1 = xu; fa = f(a1); fb = f(b1);
c1 = a1; fc = fa; d1 = b1 - c1; e1 = d1;

while(1)
if fb == 0, break, end 
    if sign(fa) == sign(fb) 
        a1 = c1; fa = fc; d1 = b1-c1; e1 = d1;
    end
   
   if abs(fa) < abs(fb)
      c1 = b1;    b1 = a1;    a1 = c1;
      fc = fb; fb = fa; fa = fc;
   end

   m1 = 0.5*(a1 - b1);
   tolerance = 2.0*eps*max(abs(b1),1.0);

   if (abs(m1) <= tolerance) | (fb == 0.0)
      break
   end

   if (abs(e1) < tolerance) | (abs(fc) <= abs(fb))
      d1 = m1;
      e1 = m1;
   else
      s1 = fb/fc;
      
      if (a1 == c1)
         p1 = 2.0*m1*s1;
         q1 = 1.0 - s1;

      else
         q1 = fc/fa; r1 = fb/fa;
         p1 = s1*(2.0*m1*q1*(q1 - r1) - (b1 - c1)*(r1 - 1.0));
         q1 = (q1 - 1.0)*(r1 - 1.0)*(s1 - 1.0);
      end;

      if p1 > 0, q1 = -q1; else p1 = -p1; end;
      
      if (2.0*p1 < 3.0*m1*q1 - abs(tolerance*q1)) & (p1 < abs(0.5*e1*q1))
         e1 = d1;
         d1 = p1/q1;

      else
         d1 = m1;
         e1 = m1;

      end;
   end
   
   c1 = b1;
   fc = fb;

   if abs(d1) > tolerance
      b1 = b1 + d1;

   else
      b1 = b1 - sign(b1-a1)*tolerance
   end

   fb = f(b1);
end