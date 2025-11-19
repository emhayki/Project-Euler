
clc; clear; close;


for i = 1389026623:-1:1010101010
numStr = char(sym(i)^2);
numStr = numStr(1:2:end);
    if strcmp(numStr, '1234567890')
        disp(i)
        break
    end
end
