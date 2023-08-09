
clc; clear; close;
syms n

phi = (1 + sqrt(5)) / 2;
fib = round((phi .^ (n)) / sqrt(5));

for i =1:5000
result = char(vpa(subs(fib, n, i),1000));

if(length(result)-2 >= 1000)
       break
end

end

result
i
length(result)