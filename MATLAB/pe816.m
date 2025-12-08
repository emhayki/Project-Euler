
clc; clear; close;

 lim = 14; 
dmin = inf;

sn = 290797;
md = 50515093;
Pn = zeros(lim, 2);

for i = 1:lim
    s1 = mod(sn^2, md);
    s2 = mod(s1^2, md);
    Pn(i,:) = [sn, s1];
    sn = s2; 
end


for i = 1:lim
    for j = i+1:lim
        dx = Pn(i,1) - Pn(j,1);
        dy = Pn(i,2) - Pn(j,2);
        dmin = min(dmin, sqrt(dx*dx + dy*dy));
    end
end

d = vpa(dmin);
formatted = sprintf('%.9f', d);
disp(formatted);