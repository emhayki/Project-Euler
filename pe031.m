
clc; clear; close; 
% not the best solution

a1 = 1;
a2 = 2;
a3 = 5;
a4 = 10;
a5 = 20;
a6 = 50;
a7 = 100;
a8 = 200;

sum = 0;

for i1 = 0:200
    for i2 = 0:100
        for i3 = 0:40
            for i4 = 0:20
                for i5 = 0:10
                    for i6 = 0:4
                        for i7 = 0:2
                            for i8 = 0:1
                                num = (a1 * i1) +  (a2 * i2) +  (a3 * i3) +  (a4 * i4) +  (a5 * i5) +  (a6 * i6) +  (a7 * i7) +  (a8 * i8);
                                if(num == 200)
                                    sum = sum + 1;
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end




