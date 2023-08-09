
clc; clear; close;

num = 125874;

while(true)
    num = num + 1;
    num2 = num * 2;

    out = check(num, num2);
    if(out == false)
        continue
    end

    num3 = num * 3;

    out = check(num, num3);
    if(out == false)
        continue
    end

    num4 = num * 4;

    out = check(num, num4);
    if(out == false)
        continue
    end


    num5 = num * 5;

    out = check(num, num5);
    if(out == false)
        continue
    end


    num6 = num * 6;

   if(string(sort(char(string(num)))) ==  string(sort(char(string(num2)))) && ...
      string(sort(char(string(num)))) ==  string(sort(char(string(num3)))) && ...
      string(sort(char(string(num)))) ==  string(sort(char(string(num4)))) && ...
      string(sort(char(string(num)))) ==  string(sort(char(string(num5)))) && ...
      string(sort(char(string(num)))) ==  string(sort(char(string(num6)))))
   num
       return 
   end



    
end


function out = check(num, num2)

if(string(sort(char(string(num)))) ==  string(sort(char(string(num2)))))
        out = true;
else
        out = false;
end

end