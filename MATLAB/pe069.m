

clc; clear; close;


n = 1000000;
nums = zeros(n,1);

for i = 1:n
    nums(i,1) = length(unique(factor(i)));
end

num2 = find(nums == max(nums));

[n,i] = max(num2./eulerPhi(num2));

num2(i)

