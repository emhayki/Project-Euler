

clc; clear; close;

fileID = fopen('triangle.txt', 'r');
fileSt = textscan(fileID, '%n', 'Delimiter', '\n');
A = cell2mat(fileSt(:,1));

n = 100;
A1 = zeros(n);

for i = 1:length(A1)
    A1(i,1:i)= A(1:i);
    A(1:i) = [];
end

for i = n-1:-1:1
    for j = 1:i
        A1(i,j) = A1(i,j) + max(A1(i+1,j), A1(i+1,j+1));
    end
end

A1(1,1)

