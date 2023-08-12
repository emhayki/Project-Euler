
clc; clear;

 N = 1000;
p3 = zeros(N,1);
p4 = zeros(N,1);
p5 = zeros(N,1);
p6 = zeros(N,1);
p7 = zeros(N,1);
p8 = zeros(N,1);

for n = 1:N
p3(n) = n * (n + 1)/2;
p4(n) = n ^ 2;
p5(n) = n * (3*n - 1)/2;
p6(n) = n * (2*n - 1);
p7(n) = n * (5*n - 3)/2;
p8(n) = n * (3*n - 2);
end


p3 = p3(p3 >= 1000 & p3 < 10000);
p4 = p4(p4 >= 1000 & p4 < 10000);
p5 = p5(p5 >= 1000 & p5 < 10000);
p6 = p6(p6 >= 1000 & p6 < 10000);
p7 = p7(p7 >= 1000 & p7 < 10000);
p8 = p8(p8 >= 1000 & p8 < 10000);


p3c = char(string(p3));
p4c = char(string(p4));
p5c = char(string(p5));
p6c = char(string(p6));
p7c = char(string(p7));
p8c = char(string(p8));



v = [1 2 3 4 5 6];
P = perms(v);
C = {p3c, p4c, p5c, p6c, p7c, p8c};

for i = 1:length(P)
    num = P(i,:);
    found = polygonal(C{num(1)},C{num(2)},C{num(3)},C{num(4)},C{num(5)},C{num(6)});
    
    if(found ~= 0)
        sum(str2double(string(found)))
        break 
    end
    
end





function found = polygonal(p8c,p7c,p6c,p5c,p4c,p3c)

       for i1 = 1:length(p8c)
    
       found1 = find(p8c(i1,3) == p7c(:,1) & p8c(i1,4) == p7c(:,2));
       %----------------------------------------------------------------
            if(~isempty(found1))
    
                for i2 = 1:length(found1)
               
                found2 = find(p7c(found1(i2),3) == p6c(:,1) & p7c(found1(i2),4) == p6c(:,2));
                %----------------------------------------------------------------
                    if(~isempty(found2))
    
                        for i3 = 1:length(found2)
            
                         found3 = find(p6c(found2(i3),3) == p5c(:,1) & p6c(found2(i3),4) == p5c(:,2));
                        %----------------------------------------------------------------
                            if(~isempty(found3))
                
                                for i4 = 1:length(found3)
                    
                                 found4 = find(p5c(found3(i4),3) == p4c(:,1) & p5c(found3(i4),4) == p4c(:,2));
                                %----------------------------------------------------------------
                                    if(~isempty(found4))
                            
                                        for i5 = 1:length(found4)
                            
                                         found5 = find(p4c(found4(i5),3) == p3c(:,1) & p4c(found4(i5),4) == p3c(:,2));
                                         %----------------------------------------------------------------
                                            if(~isempty(found5))
                                    
                                                for i6 = 1:length(found5)
                                    
                                                 found6 = find(p3c(found5(i6),3) == p8c(i1,1) & p3c(found5(i6),4) == p8c(i1,2), 1);

                                                     if(~isempty(found6))                                                            
                                                          found = [p8c(i1,:); p7c(found1(i2),:); p6c(found2(i3),:); p5c(found3(i4),:); p4c(found4(i5),:); p3c(found5(i6),:)];
                                                          return
                                                     end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
       end
found = 0;
end  
    
    
    

