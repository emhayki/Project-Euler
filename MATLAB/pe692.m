
clc; clear; close;

n = sym('23416728348467685');

g = G(n)

function g = G(n)

    F = sym([1 2]);
    
    while F(end) <= n
        F(end + 1) = F(end) + F(end - 1);
    end

    mmax = length(F);
    B = sym(zeros(1, mmax));
    B(1) = 0;
    B(2) = 1;

    for m = 3:mmax
        B(m) = B(m - 1) + F(m - 1) + B(m - 2);
    end


    g = sym(0);
    while n > 0
        m = find(F <= n, 1, 'last');
        fm = F(m);
        g = g + B(m) + fm;
        n = n - fm;
    end
end
