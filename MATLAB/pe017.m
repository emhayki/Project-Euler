
clc; clear; close;

num = strings([1000,1]);

uni = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"];

bi = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"];

tens = ["ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty" , "ninety"];

num(1:9) = uni;
 num(10) = tens(1);

num(11:19) = bi;
 num(20) = tens(2);

 k = 1;
 j = 2;
ii = 21;

for i = 20:91
    num(ii) = tens(j) + uni(k);

    if(num(ii) == "ninetynine")
        break
    end

   if(uni(k) == "nine")
      k = 0;
      j = j + 1;
      ii = ii + 1;
     num(ii) =  tens(j);
   end

   k = k + 1;
 ii = ii + 1;

end
num(100) = uni(1) + "hundred";
% return

% 101 to 999 ------------
k = 1;
j = 1;
ii = 101;
for i = 101:991

num(ii) = uni(k) + "hundred" + "and" + num(j);

if(num(ii) == "ninehundredandninetynine")
        break
 end


 if(num(j) == "ninetynine")
ii = ii + 1;
     j = 0;
     k = k + 1;
     num(ii) = uni(k) + "hundred";
 end

j = j + 1;
ii = ii + 1;
end

num(end) = "onethousand";


Sum = 0;

for i = 1:length(num)
    
    Sum = Sum + length(char(num(i)));
end

Sum