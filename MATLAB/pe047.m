
clc; clear; close;


k = 1;
i = 1;

while(true)
    m = unique(factor(i));

    if(length(m) == 4)
        nums(k,:) = [i, m(1), m(2), m(3), m(4)];

        if( k > 3)

             n1 = nums(k,1) - nums(k-1,1);
             n2 = nums(k-1,1) - nums(k-2,1);
             n3 = nums(k-2,1) - nums(k-3,1);

             if(n1 == 1 && n2 == 1 && n3 == 1)
                 nums(k,1)
                 nums(k-1,1)
                 nums(k-2,1)
                 nums(k-3,1)
                 return 
             end
        end

        k = k + 1;
    end

    i = i  + 1;

end




