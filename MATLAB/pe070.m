
clc; clear; close;

  Primes = primes(5000);
ratioMin = 100;
    nMin = 0;

for p1 = Primes

    for p2 = Primes(Primes > p1)

        n = p1 * p2;
    
        if (n > 10^7); break; end
    
         phin = eulerPhi(n, Primes);
      
        ratio = n / phin;

        if(ratio > ratioMin); continue; end
        
        if(strcmp(sort(char(string(phin))), sort(char(string(n))))) 
                ratioMin = ratio; 
                    nMin = n;
        end

    end
end

nMin


function result = eulerPhi(n, Primes)

    result = n;

    for p = Primes

        if(p > n); break; end

        if(mod(n, p) == 0)

            result = result * (1 - 1/p);

            while(mod(n, p) == 0); n = n / p; end

        end
    end
    
    if(n > 1); result = result * (1 - 1/n); end

end
