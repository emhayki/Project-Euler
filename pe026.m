
clc; clear; close;


for d = 1:1000

      a = floor(mod(1,d));
   nums = [];

    while(true)
    a = a*10;
    b = a/d;
    a = floor(mod(a,d));

    if(find(nums == a)); break; end
    
    nums = [nums a];
    end

    remainder(d,1) = length(nums);
    
    
end

d = find(remainder == max(remainder))