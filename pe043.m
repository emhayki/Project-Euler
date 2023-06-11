
clc; clear; close;

v = 0:9;
P = perms(v);
k = 1;
for i = 1:length(P)
      n = sprintf('%d', P(i,:));

         d2d3d4 = str2num(n(2:4))/2;

         if(mod(d2d3d4,1) ~=0)
             continue
         end

         d3d4d5 = str2num(n(3:5))/3;

         if(mod(d3d4d5,1) ~=0)
             continue
         end

         d4d5d6 = str2num(n(4:6))/5;

         if(mod(d4d5d6,1) ~=0)
             continue
         end

         d5d6d7 = str2num(n(5:7))/7;

         if(mod(d5d6d7,1) ~=0)
             continue
         end

         d6d7d8 = str2num(n(6:8))/11;

         if(mod(d6d7d8,1) ~=0)
             continue
         end

         d7d8d9 = str2num(n(7:9))/13;

         if(mod(d7d8d9,1) ~=0)
             continue
         end

        d8d9d10 = str2num(n(8:10))/17;

        if(mod(d8d9d10,1) ~=0)
             continue
         end

        if(mod(d2d3d4,1) == 0 & mod(d3d4d5,1) == 0 & mod(d4d5d6,1) == 0 & ...
           mod(d5d6d7,1) == 0 & mod(d6d7d8,1) == 0 & mod(d7d8d9,1) == 0 & mod(d8d9d10,1) == 0)
            nums(k) = str2num(n);
            k = k + 1;
        end

end


num2str(sum(nums))
