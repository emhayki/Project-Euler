
clc; clear; close

syms a b
c = a^b;
MaxSum = 0;

for i = 2:100
    for j  = 2:100
        k = char(string(vpa(subs(c,[a b], [i j]), 10000)));
        k = k(1:end-2);
        sum = 0;
        for m = 1:length(k)
            sum = sum + double(string(k(m)));
        end

        if(sum > MaxSum)
            MaxSum = sum;
        end

        
    end
     
end


MaxSum