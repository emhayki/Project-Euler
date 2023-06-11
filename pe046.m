
clc; clear; close; 

oNum = 3:2:10000;
pNum = primes(10000);

for i1 = 1:length(oNum)
    found = false;
    
    for i2 = 1:length(pNum)

        for  i3 = 0:10000
            num = pNum(i2) + 2*i3^2;

            if(num == oNum(i1))
               found = true;
               break;
            end

            if(num > oNum(i1))
                break;
            end

        end

        if(found)
            break;
        end

    end

    if(found == false)
        son = oNum(i1)
        break
    end

end

