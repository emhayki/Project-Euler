
clc; clear; close;

limit = 1e9;

n = 100;
p = primes(n);
k = length(p);

H = zeros(limit, 1);
H(1) = 1;
idx = ones(k,1); 

count = 1;

for t = 2:length(H)

    for j = 1:k
        next(j) = p(j) * H(idx(j));
    end

    h = min(next);

    if(h > limit)
        break
    end

    count = count + 1;
    H(count) = h;

    for j = 1:k
        if (next(j) == h)
            idx(j) = idx(j) + 1;
        end
    end

end

fprintf('Total Hamming numbers = %d\n', count);
