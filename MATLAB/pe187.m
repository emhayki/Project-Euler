
clc; clear; close;

N = 10^8;
n = N;
p = primes(N); 

numK = sum(p <= sqrt(n));

semiprimes = 0;

for k = 1:numK
    pk   = p(k);
    num1 = n / pk;
    pi_n_over_pk = sum(p <= num1);
    semiprimes = semiprimes + (pi_n_over_pk - k + 1);
end

semiprimes
