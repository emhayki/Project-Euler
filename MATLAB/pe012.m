

clc; clear; close

T = 1;
i = 2;

while(true)

 T = T + i;
 
 divCount = 2;

    for j = 2:sqrt(T)
        if rem(T, j) == 0
            divCount = divCount + 2;
        end
    end


    if(divCount >= 500); break; end

 i = i + 1;
end

T


