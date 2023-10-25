
clc; clear; close

f(1) = 1;
f(2) = 2;
 Sum = f(2);
   i = 3;

while(true)
    f(i) = f(i-1) + f(i-2);
  
    if(f(i) > 4000000); break; end

    if(mod(f(i),2) == 0) Sum = Sum + f(i); end  

     i = i + 1;
end

Sum

