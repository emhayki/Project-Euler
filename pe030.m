
clc; clear; close all;

sum = 0;

nums = 10:354294;

numsChar = num2str(nums');

for i = 1:length(nums)
check = 0;
    for j = 1:size(numsChar,2)
        if(~isnan(str2double(numsChar(i,j))))
        check =  check + str2double(numsChar(i,j))^5;
        end
    end

    if(check == nums(i))
        sum = sum + check;
    end
end

sum