clc; clear;

maxD = 1000000;

count = 0;
phi = 1:maxD;
fractions = zeros(1, maxD);

for d = 2:maxD
    if phi(d) == d
        for n = d:d:maxD
            phi(n) = phi(n) - phi(n) / d;
        end
    end
    count = count + phi(d);
end

count
