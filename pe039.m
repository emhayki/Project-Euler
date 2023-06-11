
clc; clear; close;

% syms a b c 

% c = sqrt(a^2 + b^2)
% a = 120 - c - b


% a = 20;
% b = 48;

z  = 1;
for p = 120:1000
k = 1;
for  a = 1:p
    for b = a:p
        A = a + b + sqrt(a^2 + b^2);
        if(A == p)
        sol(k,:) = [a b];
        k = k + 1;
        break
        end

        if(A > p)
            break
        end
    end
end
num(z,:) = [p length(sol)];
z = z + 1;
end

mm = find(num(:,2) == max(num(:,2)));

num(mm(1), 1)
