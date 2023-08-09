

clc; clear; close;
j = 1;

for n1 = 2:100
    n2 = n1;
    while(n1*n2 < 10000)
        n2 = n2 + 1;
        num = n1 * n2;
        arr = sort([ num2str(n1) num2str(n2)  num2str(num)]);
        if(strcmp(arr,'123456789'))
            asn(j,1) = num;
            j = j + 1;
        end
        
    end
end
anss = sum(unique(asn))
