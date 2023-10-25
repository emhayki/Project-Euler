
clc; clear; close

tic
num = 1;

while(true)

    found = true;

    for i = 1:20
        if(mod(num,i) ~= 0)
        found = false;
        break;
        end
    end

    if(found == true)
        num
        return 
    end

    num = num + 1;
end