

clc; clear; close;
n = 100;
p = primes(n);
nums = zeros(1+length(p),1+n);
nums(1,:) = 0:n; 
nums(2:end,1) = p;

% first row
for i = 2
    for j = 2:size(nums,2)

        if(nums(i,1) > nums(i-1, j))
            nums(i, j) = 0;

        elseif(nums(i,1) == nums(i-1, j))
            nums(i, j) = 1;
        else
            n = mod(nums(i-1, j), nums(i, 1));

            if(n ~= 0)
             nums(i, j) = 0;
            else
             nums(i, j) = 1;   
            end
        end
    end
end


% 

for i = 3:size(nums,1)

    for j = 2:size(nums,2)

        if(nums(i,1) > nums(1, j))
            nums(i, j) = nums(i-1, j);

        elseif(nums(i,1) == nums(1, j))

            nums(i, j) = nums(i-1, j) + 1;

        else
            n = nums(1, j) - nums(i, 1);
            if(n == 0)
                n = 1;
            else
                n = nums(i,n+1);
            end
            nums(i, j) = nums(i-1, j) + n;

        end
    end
end

[r c] = find(nums(2:end,2:end)>5000);
c(1)


