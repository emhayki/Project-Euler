
clc; clear; close;
P = primes(1000000);

% P = primes(30);
k = 1;
for i = 5:length(P)

s = num2str(P(i));

 isP = true;
    for j = 1:length(s)
        numR = str2double(s(1:j));
        numL = str2double(s((end-j+1):end));

        if(~isprime(numR) | ~isprime(numL))
            isP = false;
            break
        end
    end

if(isP)
    nums(k) = numR;
    k = k + 1;
end

if(k == 12)
    break;
end

end


sum(nums)