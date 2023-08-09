
clc; clear;

pTR = 0;
pTL = 0;
pBR = 0;
pBL = 0;

j = 1;
i = 1;

while(true)

   TopR =  i^2;
   TopL = (TopR - i + 1);
BottomR = (TopL - i + 1);
BottomL = (BottomR - i + 1);

pTR = pTR + isprime(TopR);
pTL = pTL + isprime(TopL);
pBR = pBR + isprime(BottomR);
pBL = pBL + isprime(BottomL);

check = (pTR + pTL + pBR + pBL)/(4 * (j - 1) + 1);

if(check < 0.1 & i > 1)
    i
    return 
end

j = j + 1;
i = i + 2;

end

