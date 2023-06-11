
clc; clear; close;
k = 1;
track = zeros(1000,1);
sum = 0;
for i = 2:10000-1
a = i;
b = properDivisors(a);
c = properDivisors(b);
check = find(track == a);
if(a == c && a ~= b && isempty(check))
    track(k) = a;
    k = k + 1;
    track(k) = b;
    k = k + 1;
    sum = sum + a + b;
    fprintf("a = %d, b = %d , sum = %d \n", a,b, sum)
end
end



function d = properDivisors(n)
d = 0;
    for i = 1:n-1
        if(mod(n,i) == 0)
            d = d + i;
        end
    end
end
