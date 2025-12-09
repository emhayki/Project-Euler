
clc; clear; close;

k = 15;

maxF = 2*k + 1;

F = fibonacci(1:maxF);

gk = F(2*k) * F(2*k+1)