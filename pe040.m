
clc; clear; close;

n = '';
i = 1;
while(length(n) < 1000000)
n = [n char(string(i))];
i = i + 1;
end

str2double(string(n(1))) * str2double(string(n(10))) * str2double(string(n(100))) * str2double(string(n(1000)))* str2double(string(n(10000)))* str2double(string(n(100000)))* str2double(string(n(1000000)))
