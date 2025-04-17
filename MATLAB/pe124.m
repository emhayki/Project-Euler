
clc; clear; close; 

r = zeros(100000, 2);

for i = 1:100000
    r(i,1) = i;
    r(i,2) = prod(unique(factor(i)));
end

r = sortrows(r,2);
E_10000 = r(10000,1)
