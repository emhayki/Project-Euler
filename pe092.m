
clc; clear;


k = 0;

for i = 1:1e7

    num = i;
  
    while(true)
        sum = 0;
        while (num > 0)
            num1 = mod(num,10);
            sum = sum + num1^2;
            num = floor(num/10);
        end

        if(sum == 1)
            break
        end

        if(sum == 89)
        k = k + 1;
            break;
        end

        num = sum;
        
    end

end

k
