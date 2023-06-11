
clc; clear; close;

n = 1000000;
p = primes(n);
k = 1;
for i = 1:length(p)

for Start = 1:length(p)

    if(Start > p(i))
        break
    end

    sum = 0;
    iter = 0;
    for End = Start:length(p)
    
        sum = sum + p(End);
        iter = iter + 1; 

        if(sum == p(i))
            nums(k,1) = sum;
            nums(k,2) = iter;
            k = k +1;
            break
        end

        if(sum > p(i))
            break
        end

    end

end

end

nums(find(nums(:,2) == max(nums(:,2))))
