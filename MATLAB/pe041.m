
clc; clear; close;

for j = 9:-1:1
    
 v = 1:j;
 P = perms(v);

 for i = 1:length(P)
 s = join(string(P(i,:)),"");
 n = str2double(s);
if isprime(n)
    n
    return 
    
end

 end
end

