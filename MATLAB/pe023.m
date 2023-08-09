
clc; clear;close

upNum = 28123;
TheAbundantNumber = zeros(50,1);

j = 1;
for i = 1:upNum
    if(abundantNumber(i))
        TheAbundantNumber(j) = i;
         j = j + 1;
    end
end
 
SumOfAbundantNumber = zeros(50,1);
 k = 1;

for i = 1:length(TheAbundantNumber)
    for j = i:length(TheAbundantNumber)
        if(TheAbundantNumber(i) + TheAbundantNumber(j) > upNum)
            break
        else
            SumOfAbundantNumber(k) = TheAbundantNumber(i) + TheAbundantNumber(j);
            k = k + 1;
        end
    end
end

SumOfAbundantNumber = sort(unique(SumOfAbundantNumber));

Sum = 0;
j = 1;
for i = 1:upNum
   if(i == SumOfAbundantNumber(j))
       j = j + 1;
   else
       Sum = Sum + i;
   end
end

Sum


function out = abundantNumber(n)
d = 0;
    for i = 1:n-1
        if(mod(n,i) == 0)
            d = d + i;
        end
    end

    if(d > n)
        out = true;
    else
        out = false;
    end

end
