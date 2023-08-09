
clc; clear; close;
p = primes(10000);
p = p(p>=1000);
k = 1;
for i = 1:length(p)
    a = p(i)+3330;
    b = p(i)+3330+3330;
    if(isprime(a) && isprime(b) && a <10000 && b < 10000)
        found(k,:) = [p(i) (p(i)+3330) (p(i)+3330+3330)];
        k = k + 1;
    end
end

foundstr = string(found)
k = 1;
for i = 1:length(foundstr)
    a = sort(char(foundstr(i,1)));
    b = sort(char(foundstr(i,2)));
    c = sort(char(foundstr(i,3)));

    if(a == b & b == c)
        nnn(k,:) = found(i,:);
        k = k + 1;
    end
end


nnn