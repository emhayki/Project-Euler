clc; clear;

nn = 50000000;
 p = primes(nn);

n = 1;

for i = 1:length(p)

    if(p(i)^2 > nn)
       break
    end

    for j = 1:length(p)

        if(p(j)^3 > nn)
            break
        end

        for k = 1:length(p)

            if(p(k)^4 > nn)
                break
            end


            num = p(i)^2 + p(j)^3 + p(k)^4;

            if(num < nn)
                numbers(n) = num;
                n = n + 1;
            end

        end
    end
end

length(unique(numbers))
