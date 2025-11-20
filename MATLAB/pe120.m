
clc; clear; close;

r  = 0;
for a = 3:1000
   if(mod(a,2) == 0)
       r = r + mod(a^2 - 2*a, a^2);
   else
       r = r + mod(a^2 - a, a^2);
   end
end

r
