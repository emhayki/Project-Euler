

clc; clear; close;


for a = 1:1000
    for b = (a+1):1000
        for c = (b+1):1000
            if((a + b + c) == 1000 && a^2 + b^2 == c^2)
                a * b *c
                return 
            end
        end
    end
end