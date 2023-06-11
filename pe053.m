
clc; clear; close;

k = 1;
for n = 1:100
    for r = 1:n
        C(k,1) = factorial(n)/(factorial(r) * (factorial(n-r)));
        k = k + 1;
    end
end

D = C(C > 1000000);
length(D)
