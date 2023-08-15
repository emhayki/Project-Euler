clc; clear;

 fraction = sym(zeros(1, 100));
numerator = sym([2, 3]);

for i = 1:100
    if mod(i, 3) == 2
        fraction(i) = 2 * (i + 1) / 3;
    else
        fraction(i) = 1;
    end
end

for i = 3:100
    numerator(i) = vpa(numerator(i - 1) * fraction(i - 1) + numerator(i - 2), 1000);
end

num = char(string(numerator(end)));
Sum = 0;

for i = 1:length(num)-2
        Sum = Sum + str2double(string(num(i)));
end

Sum

