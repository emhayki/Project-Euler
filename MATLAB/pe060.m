


clc; clear; close;
p = primes(10000);


for a = 1:length(p)
    A = p(a);

    for b = a:length(p)
        B = p(b);
        
        pairA1 = isprime(str2double([num2str(A) num2str(B)]));
        pairB1 = isprime(str2double([num2str(B) num2str(A)]));

        if(pairA1 == false || pairB1 == false); continue; end

        for c = b:length(p)
        C = p(c);

        pairA2 = isprime(str2double([num2str(A) num2str(C)]));
        pairB2 = isprime(str2double([num2str(B) num2str(C)]));

        pairC1 = isprime(str2double([num2str(C) num2str(A)]));
        pairC2 = isprime(str2double([num2str(C) num2str(B)]));


         if(pairA2 == false || pairB2 == false || ...
            pairC1 == false || pairC2 == false)
             continue
         end



            for d = c:length(p)
            D = p(d);
                
            
            pairA3 = isprime(str2double([num2str(A) num2str(D)]));
            pairB3 = isprime(str2double([num2str(B) num2str(D)]));
            pairC3 = isprime(str2double([num2str(C) num2str(D)]));
            
            pairD1 = isprime(str2double([num2str(D) num2str(A)]));
            pairD2 = isprime(str2double([num2str(D) num2str(B)]));
            pairD3 = isprime(str2double([num2str(D) num2str(C)]));


            if(pairA3 == false || pairB3 == false || pairC3 == false || ...
               pairD1 == false || pairD2 == false || pairD3 == false)
               continue 
            end

            
                for e = d:length(p)
                    E = p(e);
    
                    
                pairA4 = isprime(str2double([num2str(A) num2str(E)]));
                pairB4 = isprime(str2double([num2str(B) num2str(E)]));
                pairC4 = isprime(str2double([num2str(C) num2str(E)]));
                pairD4 = isprime(str2double([num2str(D) num2str(E)]));
                
                pairE1 = isprime(str2double([num2str(E) num2str(A)]));
                pairE2 = isprime(str2double([num2str(E) num2str(B)]));
                pairE3 = isprime(str2double([num2str(E) num2str(C)]));
                pairE4 = isprime(str2double([num2str(E) num2str(D)]));
    
    
                    if(pairA1 == true && pairA2 == true && pairA3 == true && pairA4 == true && ...
                       pairB1 == true && pairB2 == true && pairB3 == true && pairB4 == true && ...
                       pairC1 == true && pairC2 == true && pairC3 == true && pairC4 == true && ...
                       pairD1 == true && pairD2 == true && pairD3 == true && pairD4 == true && ...
                       pairE1 == true && pairE2 == true && pairE3 == true && pairE4 == true)
        
                        num1 = A
                        num2 = B
                        num3 = C
                        num4 = D
                        num5 = E
        
                        Sum = num1 + num2 + num3 + num4 + num5
        
        
                        return 
                    end
                    
                end
            end
        end
    end
end



