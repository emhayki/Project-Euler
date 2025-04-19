
clc; clear; close;

x(1) = 1;
x(2) = 17;

for n = 3:13
 x(n) = vpa(x(n-1)*18 - x(n-2));
end

vpa(sum(x(2:end)))


