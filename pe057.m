
clc; clear;

foundNum = 0;

  n1 = vpa(3); 
  n2 = vpa(2);

for i = 1:1000

    next_n1 = vpa(n1 + 2 * n2,1000);
    next_n2 = vpa(n1 + n2,1000);

      n1 = next_n1;
      n2 = next_n2;
    
      num_digits_n1 = length(char(string(n1)));
      num_digits_n2 = length(char(string(n2)));

    if (num_digits_n1 > num_digits_n2)
        foundNum = foundNum + 1;
    end

end

foundNum
