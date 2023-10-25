
clc; clear; close

palindromic = 0;

for i = 100:999
    for j = 100:999
        num = i * j;
        if(string(num) == reverse(string(num)) && num > palindromic)
             palindromic = num; 
        end
    end
end

palindromic

