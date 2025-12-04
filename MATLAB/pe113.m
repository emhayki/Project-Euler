clc; clear; close;

n = 100;

inc = nchoosek(n + 9, 9) - 1;
dec = nchoosek(n + 10, 10) - (n + 1);

nonbouncy = vpa(inc + dec - 9*n,100)
