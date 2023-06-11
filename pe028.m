
clc; clear; close;

imax = 1001;
num = zeros(1,imax);

j = 1;
for i = 1:imax
    num(i) = j;

    if(mod(i,2))
        jj = j;
        j = j + imax - i;
    else
        j = jj + 1;
    end
end

% num

spiral = zeros(imax,imax);
r = round(imax/2); 
 c = round(imax/2); 

i = 1;
j = i + 1;

 numb = imax*imax + imax;
%  (imax*imax - imax + 1)

nn =0;
%--------------------
for ii = 1:length(num)/2
    
kk = num(i);


numb = (numb - imax + kk)+nn-1;
% disp("1-----")
spiral(num(i), num(i):num(j)) = (numb - imax + kk):numb-nn;

numb = (numb - imax + kk)+nn;

% disp("2-----")
spiral(num(i):num(j), num(i)) = numb-nn:-1:(numb - imax  + kk);

numb = (numb - imax + kk)+nn;

% disp("3-----")
spiral(num(j), num(i):num(j)) = numb-nn:-1:(numb - imax  + kk);

numb = (numb - imax + kk)+nn;

% num(j)
nn = nn + 1;
% disp("4-----")

spiral((num(i)+1):num(j)-1, num(j)) = (numb - imax + kk)+1:numb-nn;

% numb = numb-1;
i = j + 1;
j = i + 1;

end

spiral(r,c) = 1;
diagSum = sum(diag(spiral)) + sum(diag(fliplr(spiral))) - 1 
