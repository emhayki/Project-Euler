
clc; clear; close;
format long
syms n

f = factorial(n);
result = char(vpa(subs(f, n, 100),1000));
   sum = 0;
for i = 1:length(result)

    if(result(i) == '.')
        break
    end

    A = str2double(result(i));

    sum = sum + A;
end

sum
