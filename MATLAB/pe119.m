
clc; clear; close all;

a = [];

for base = 2:100
    for exp = 2:20
        num = base^exp;

        if(num < 10)
            continue;
        end

        digitSum = sum(num2str(num) - '0');

        if(digitSum == base)
            a = [a; num base exp];
        end

    end
end
 
a = sortrows(a, 1);
num2str(a(30, 1))

