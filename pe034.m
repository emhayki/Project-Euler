
clc; clear; close;

equalNums = [];

for i = 10:100000
    numStr = num2str(i);
    nums = 0;
    for j  = 1:length(numStr)
        nums = nums + factorial(str2double(numStr(j)));
    end
    
    if(nums == i)
        equalNums(end+1,1) = nums;
     end
end

equalNums = sum(equalNums)