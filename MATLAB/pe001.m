

clc; clear; close

Sum = 0;

for i = 1:999
    if(mod(i,3) == 0 || mod(i,5) == 0)
        Sum = Sum + i;
    end
end

Sum