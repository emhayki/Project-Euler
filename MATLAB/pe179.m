
clc; clear; close;

N = 10^7;
divisors = zeros(N, 1);

for i = 1:N
    divisors(i:i:N, 1) = divisors(i:i:N, 1) + 1;
end

total = sum(divisors(1:end-1, 1) == divisors(2:end, 1))
