
clc; clear

syms a

b = sqrt(a);

ToTal = 0;

for n = 1:100
    if(mod(sqrt(n),1) ~= 0)
    
    num = char(string(vpa(subs(b,n),105)));
    num = strrep(char(num), '.', '');
    sum = 0;
    
        for i = 1:100
           sum = sum + str2double(string(num(i)));
        end

    ToTal =  ToTal + sum;
    end
end

ToTal