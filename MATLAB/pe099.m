

clc; clear;

num = load('base_exp.txt');

index = 0;
numbi = 0;

for i = 1:length(num)

num1 =  log10(num(i,1)) * num(i,2);

if(num1 > numbi)
    numbi = num1;
    index = i;
end

end

index

