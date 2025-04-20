
clc; clear; clsoe;

N = 1e9;
count = 0;

for n = 1:N-1
    if mod(n,10) == 0
        continue
    end

    r = str2double(fliplr(int2str(n)));
    sum_digits = int2str(n + r);
    
    if all(mod(double(sum_digits) - '0', 2) == 1)
        count = count + 1;
    end
end

count