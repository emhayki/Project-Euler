
clc; clear;
syms p1 b1
num = b1^p1;
n = 1;
for p = 1:100

    for b = 1:10000000000000

        numS = vpa(subs(num, [b1 p1], [b p]),100000);
        numC = char(numS);
        numC = numC(1:end-2);
        if(length(numC) == p)
        nums(n,1) = string(numS);
        n = n + 1;
        end

        if(length(numC) > p)
            break
        end
    end

%     return

end


length(nums)