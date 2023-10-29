


clc; clear; close;

n = 1;
while(true)
b = 1/8 *(2*(3 - 2*sqrt(2))^n + sqrt(2)*(3 - 2*sqrt(2))^n + 2*(3 + 2*sqrt(2))^n - sqrt(2)*(3 + 2*sqrt(2))^n + 4);
t = 1/2*(1 + sqrt(1 - 8*b + 8*b^2));

if(t > 10^12)
    break
end
n  = n + 1; 
end

round(b)