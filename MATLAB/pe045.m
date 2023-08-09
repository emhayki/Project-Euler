

clc; clear; close;


for n1 = 286:150000

    Tn = n1 * (n1 + 1)/2;  

        for n2 = 166:150000

        Pn = n2 * (3*n2 - 1)/2; 

            if(Tn == Pn)

                for n3 = 144:150000
                Hn = n3 * (2*n3 - 1); 

                 if(Tn == Pn && Hn == Pn)
                     Tn
                     Pn
                     Pn
                     n1 
                     n2 
                     n3
                     return 
                 end

                end
            end

        end
end

