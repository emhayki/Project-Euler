
clc; clear; close

k = 0;

for i = 1:1000000

     cc = num2str(i);
     bb = dec2bin(i);
    
     ccFlip = fliplr(cc);
     bbFlip = fliplr(bb);
    
     if(strcmp(cc,ccFlip) & strcmp(bb,bbFlip))
         k = k + 1;
         nums(k) = i;
     end
end

sum(nums)