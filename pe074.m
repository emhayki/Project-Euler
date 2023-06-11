
clc; clear; close;

f = factorial(1:9);
foundNum = 0;
mm = 1;
for i = 70:1000000

num = i;
Chain = [num];

while(true)
NextNum = 0;

while(num > 0)
    n = mod(num,10);
    if(n ~= 0)
    NextNum = NextNum + f(n);
    else
    NextNum = NextNum + 1;
    end
    num = floor(num/10);
end

Chain = [Chain NextNum];

if(length(unique(Chain)) ~= length(Chain))
    k = length(unique(Chain));
    break
end

num = NextNum;
end

if(k == 60)
    foundNum = foundNum + 1;
end


end

foundNum
