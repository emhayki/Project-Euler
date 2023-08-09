
clc; clear; 

syms a b 

nums = [];
seen = "";
s = a + b;
MaxIter = 55;

for i = 100:10000
     m = num2str(i);
     n = fliplr(m);
  iter = 1;
  pali = "";
isseen = false;

            while(iter <= MaxIter)
        
                sum = char(string(vpa(subs(s, {a,b}, {m , n}))));
                sum(end-1:end) = [];
                m = sum;
                n = fliplr(m);

                pali(end+1,1) = string(sum);
        
                if(m == n); seen = [seen; pali]; break; end

                if ismember(sum, seen); isseen = true; break; end
                iter = iter + 1;
            end

    if(string(m) ~= string(n) && isseen == false);  nums = [nums i];  end

end

length(nums)



