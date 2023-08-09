
clc; clear;

hcf = zeros(1000000,3);

for d = 1:1000000
    n = floor(3/7 * d);
 hcf(d,1) = n/d;
 hcf(d,2) = n;
 hcf(d,3) = d;
end

[~,idu] = unique(hcf(:,1),'sorted');
    idu = hcf(idu,:);

index = find(idu(:,2) == 3 & idu(:,3) == 7 );
idu(index-1,2)
