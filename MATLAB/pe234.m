
clc; clear; close;

target = 15499/94744;

P = primes(50);
d0 = prod(P(1:7));

for k = 1:20000
    d = d0 * k;

    R = eulerPhi(d) / (d - 1);

    if (R < target)
        fprintf('d = %d\n', d);
        return
    end
end
