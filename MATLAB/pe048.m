



clc; clear; close;

syms i
     i = sym(1:1000);
result = char(sum(i.^i));

result(end-9:end)
