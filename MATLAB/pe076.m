

clc; clear
n = 100;
nums = zeros(n);
nums(:,1) = 1;
nums(1,:) = 1;

for i = 2:size(nums,1)
    for j = 2:size(nums,2)

        if(i > j)
            nums(i,j) = nums(i-1,j);

        elseif(i == j)
            nums(i,j) = nums(i-1,j) + 1;
        else
            ns = j - i;
            nums(i,j) = nums(i-1,j) + nums(i,ns);
            
        end
    end
end

nums(end,end)-1
