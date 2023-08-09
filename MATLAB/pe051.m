
clc; clear; close;

num = 40000:200000;

num = num(isprime(num))';
num = char(string(num));


for i = 1:size(num,1)

inputStr = num(i,:);

[C,ia,ic] = unique(inputStr);
 a_counts = accumarray(ic,1);

 outputStr = C(a_counts > 1);

 inputStr2 = inputStr;
 
 if(length(outputStr) > 0)

     for mm = 1:length(outputStr)
          found = [];
          t = find(inputStr == outputStr(mm));
        %----------------
        for nn = 0:9
             inputStr = inputStr2;
          inputStr(t) = char(string(nn));
             NeNum = str2double(string(inputStr));
        
            if(isprime(NeNum) && (length(char(string(NeNum))) == length(inputStr2))); found = [NeNum found]; end
        
            if(length(found) == 8)
                found
                min(found)
                return 
            end
        end
        %----------------
     end
 end

end


