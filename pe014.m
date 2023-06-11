clc; clear; close;

MaxIter = 0;

for i = 1000000:-1:1
iter = 1;
n = i;
    while(n > 1)
        if(mod(n,2) == 0)
            n = n/2;
        else
            n = 3*n + 1;
        end
    iter = iter + 1;
    end

if(iter > MaxIter)
    MaxIter = iter;
    num = i;
end

end

MaxIter
num