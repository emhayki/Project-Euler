
clc; clear; close;

p = primes(1000000);
k = 1;

for j = 1:length(p)

pstr = num2str(p(j));
 isp = true; 
 
for i = 1:length(pstr)
pstr = circshift(pstr,length(pstr)-1);
 num =str2double(pstr);
     if(~isprime(num))
         isp = false; 
        break 
     end
end

    if(isp)
        p2(k) = p(j);
        k = k + 1;
    
    end
end

length(p2)
