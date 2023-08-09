
clc; clear; close;

for i = 1:100000
    for j = 1:i
        Pi = i/2 * (3 * i - 1);
        Pj = j/2 * (3 * j - 1);
        P1 = Pi + Pj;
        P = (6*P1 + 1/4)^(1/2)/3 + 1/6;

        P2 = abs(Pi - Pj);
        N = (6*P2 + 1/4)^(1/2)/3 + 1/6;

        if(mod(P,1) == 0 && mod(N,1) == 0)
            D = P2
            return
        end

    end
end

