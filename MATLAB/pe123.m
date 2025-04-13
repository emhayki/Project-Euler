
clc; clear; close;

P = primes(10^6);

for n = 1:length(P)

    p = P(n);
    r = mod(2 * n * p, p^2);  

    if(r > 1e10)
        Ans = [n p]
        break;
    end

end
