

clc; clear; close;

I = 1;
V = 5;
X = 10;
L = 50;
C = 100;
D = 500;
M = 1000;

Lsum = 0;
fileID = fopen('roman.txt', 'r');
fileSt = textscan(fileID, '%s', 'Delimiter', '\n');
Romans = char(fileSt{1});

for i = 1:length(Romans)
 
  Roman1 = strrep(Romans(i,:), ' ', '');
  Roman2 = rom2num(Roman1,I,V,X,L,C,D,M);
  Roman3 = num2rom(Roman2,I,V,X,L,C,D,M);

    save = length(Roman1) - length(Roman3);
    Lsum = Lsum + save;

end

Lsum




function num = rom2num(numRi,I,V,X,L,C,D,M)
      
num = 0;
for j = 1:length(numRi)-1

    num1 = eval(numRi(j));
    num2 = eval(numRi(j+1));

    if(num1 >= num2)
        num = num + num1;
    else
        num = num - num1;
    end

end
    num = num + eval(numRi(end));
   
end


function Roman = num2rom(num,I,V,X,L,C,D,M)

IV = abs(I - V);
IX = abs(I - X);

XL = abs(X - L);
XC = abs(X - C);

CD = abs(C - D);
CM = abs(C - M);

Roman = '';

while(num > 0)

    if(num == IV)
        num = num - IV; 
        Roman = [Roman 'IV']; continue
    end

    if(num == IX)
        num = num - IX; 
        Roman = [Roman 'IX']; continue
    end


    if(num >= XL && num < 50)
        num = num - XL; 
        Roman = [Roman 'XL']; continue
    end

    if(num >= XC && num < 100)
        num = num - XC; 
        Roman = [Roman 'XC']; continue
    end

    if(num >= CD && num < 500)
        num = num - CD; 
        Roman = [Roman 'CD']; continue
    end


    if(num >= CM && num < M)
        num = num - CM; 
        Roman = [Roman 'CM']; continue
    end

    if(num >= M)
        num = num - M; 
        Roman = [Roman 'M']; continue
    end

    if(num >= D && num < M)
        num = num - D; 
        Roman = [Roman 'D']; continue
    end

     if(num >= C && num < D)
        num = num - C; 
        Roman = [Roman 'C']; continue
     end

     if(num >= L && num < C)
        num = num - L;
        Roman = [Roman 'L']; continue
     end


     if(num >= X && num < L)
        num = num - X; 
        Roman = [Roman 'X']; continue
     end

     if(num >= V && num < X)
        num = num - V; 
        Roman = [Roman 'V']; continue
     end

     if(num >= I && num < V)
        num = num - I; 
        Roman = [Roman 'I']; continue
     end

end



end


