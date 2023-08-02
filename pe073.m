
clc; clear
 
maxd = 12000;
 hcf = zeros(sum(1:maxd),1);
   i = 1;

for d = 1:maxd
    for n = 1:d
          hcf(i,1) = n/d;
          i = i + 1;
    end
end

hcf = unique(hcf,'sort');
hcf2 = hcf(hcf > 1/3 & hcf < 1/2);
length(hcf2)
