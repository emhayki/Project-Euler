
clc; clear; close;

primeSquares = (primes(100000000)').^2;
reversedSquares = str2num(fliplr(num2str(primeSquares)));

primeRoots = [];
for i = 1:length(primeSquares)
    reversedRoot = reversedSquares(i)^0.5;
    if(mod(reversedRoot,1) == 0)
        if(isprime(reversedRoot))
            originalRoot = primeSquares(i)^0.5;
            if(mod(originalRoot,1) == 0 && mod(reversedRoot,1) == 0 && originalRoot ~= reversedRoot && primeSquares(i)~=reversedSquares(i))
                primeRoots = unique([primeRoots; originalRoot; reversedRoot]);
                if(length(primeRoots) == 50)
                    break
                end
            end
        end
    end
    
end

vpa(sum(primeRoots.^2))