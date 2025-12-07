
clc; clear; close;

N = 1e8;

for x = 1:N
    for y = 1:(x - 1)

        num1 = x + y;
        num2 = x - y;

        if(mod(sqrt(num1), 1) == 0 && mod(sqrt(num2), 1) == 0)
            for z = 1:(y - 1)
             
                num3 = x + z;
                num4 = x - z;
                num5 = y + z;
                num6 = y - z;

                if(mod(sqrt(num1), 1) == 0 && mod(sqrt(num2), 1) == 0 && ...
                   mod(sqrt(num3), 1) == 0 && mod(sqrt(num4), 1) == 0 && ...
                   mod(sqrt(num5), 1) == 0 && mod(sqrt(num6), 1) == 0 )

                    sol = x + y + z

                    return 
                end
    
            end
        end
    end
end

