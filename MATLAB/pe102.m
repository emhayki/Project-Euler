
clc; clear; close;

T = load('triangles.txt');

t = 0;

for i = 1:size(T,1)

    A = T(i,1:2);
    B = T(i,3:4);
    C = T(i,5:6);
    P = [0, 0];
    
    B = B - A;
    C = C - A;
    P = P - A;
    
    d = (B(1) * C(2)) - (C(1) * B(2));
    
    wA = ((P(1)*(B(2)-C(2)) + P(2)*(C(1)-B(1)) + B(1)*C(2) - C(1)*B(2) ))/d;
    wB = ((P(1) * C(2)) - (P(2) * C(1)))/d;
    wC = ((P(2) * B(1)) - (P(1) * B(2)))/d;
    
    if(wA >= 0 && wA <= 1 && ...
       wB >= 0 && wB <= 1 && ...
       wC >= 0 && wC <= 1)
        t = t + 1;
    end
end

t

