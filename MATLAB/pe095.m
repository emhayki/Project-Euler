
clc; clear; close all;

LIMIT    = 1e6;
chainLen = 0;
chainMin = 0;

sumDiv = zeros(LIMIT,1);

for i = 1:LIMIT
    sumDiv(i:i:LIMIT, 1) = sumDiv(i:i:LIMIT, 1) + i;
end

for i = 1:LIMIT
    sumDiv(i) = sumDiv(i) - i;
end

for i = 1:LIMIT

    num = i;
    million = false;
    valid   = false;  
    chains  = [];

    while (true)
        num = sumDiv(num);

        if(num == i)
            valid  = true;
            chains = [chains; num];
            break
        end

        if (sum(ismember(chains, num)) > 0 || num == 0)
            break
        end

        if (num > 1000000)
            million = true;
            break
        end

        chains = [chains; num];

    end

    if (million == false && valid && length(chains) > chainLen)
        chainLen = length(chains);
        chainMin = min(chains);
    end
end

chainLen
chainMin
