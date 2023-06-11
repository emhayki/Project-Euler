
clc; clear; close; 

k = 1;

for i = 1:10000

    j = 1;
 cNum = '';

    while(true)

        num = i * j;
        cNum = [cNum char(string(num))];
        
        if(length(cNum) >= 9)
            if( (length(unique(cNum)) == length(cNum) ) & (string(unique(cNum)) == "123456789" ) )
            comb(k,:) = [str2num(cNum) i j];
            k = k + 1;
            end

            break 
        end

        j = j + 1;
    end
end

max(comb)