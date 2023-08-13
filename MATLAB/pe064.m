
clc; clear

count = 0;

for S = 1:10000


    a0 = floor(sqrt(S));
       n = 1;
    m(n) = 0;
    d(n) = 1;
    a(n) = a0;
    
     while (a(n)) ~= 2 * a0
        m(n + 1) = d(n) * a(n) - m(n);
        d(n + 1) = (S - m(n + 1)^2)/d(n);
        a(n + 1) = floor((a(1) +  m(n + 1))/d(n + 1));    
        if(a(n + 1) == Inf); break; end
        n = n + 1;
    end

    if(a(2) ~= Inf)
        if(mod(n - 1,2) ~= 0)
            count = count + 1;
        end
    end

clear a m d n  

end

count

