
clc; clear; close all;

n = 1;

while(true)
    d = length(divisors(n^2));
    num_solutions = (d + 1)/2;

    if(num_solutions > 1000)
        disp(['Answer: ' num2str(n)]);
        break;
    end

    n = n + 1;
end
