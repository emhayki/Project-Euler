
clc; clear; close;

longest_a = 0;
longest_b = 0;
longest_n = 0;
longest_prinme = 0 ;

for a = -999:999
    for b = -1000:1000
        counter = 0;
        n = 0;
        while(true)
            num = n^2 + a*n + b;

            if(isprime(abs(num)))
            counter = counter + 1;
            else
                if(counter > longest_prinme)
                    longest_prinme = counter;
                    longest_a = a;
                    longest_b = b;
                    longest_n = n;
                end
                break;
            end
            n = n + 1;
        end
    end
end

longest_a
longest_b
longest_n
pro = longest_a * longest_b
