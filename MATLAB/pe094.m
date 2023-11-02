

clc; clear;

  i = -1;
  n = 1;
Sum = 0;

while(true)

x = -1/2 * (-(2 - sqrt(3))^n - (2 + sqrt(3))^n);

a = (2*x + i)/3;
b = a;
c = a + i;
P = a + b + c;

if(P > 1000000000); break; end

if(a >= 1 && b >= 1 && c >= 1 )
Sum = Sum + P;
end

i = i * -1;
n = n + 1;


end

Sum 