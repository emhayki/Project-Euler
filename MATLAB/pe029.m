clc; clear; close
a = 2:100;
b = 2:100;
c = zeros(length(a), length(b));

for i = 1:length(a)
    for j = 1:length(b)
        c(i,j) = a(i)^b(j);
    end
end

length(unique(sort(c(:))))