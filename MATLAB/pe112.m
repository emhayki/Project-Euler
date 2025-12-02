
clc; clear; close;

increasing = 0;
decreasing = 0;
bouncy = 0;
total = 0;

while(true)

    total = total + 1;
    str = num2str(total);

    if(all(diff(str) >= 0))
        increasing = increasing + 1;

    elseif(all(diff(str) <= 0))
        decreasing = decreasing + 1;

    else
        bouncy = bouncy + 1;
        
    end

    if(floor(bouncy/total * 100) == 99)
        total
        break;
    end

end
