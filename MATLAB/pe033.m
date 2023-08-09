clc; clear; close;

jjj(1,5) = nan;

for i = 10:100
    for j = 10:100
        Num = i/j;

        if(Num < 1)
            I = num2str(i);
            J = num2str(j);

            if(I(1) ~= I(2) & I(2) ~= '0' & J(2) ~= '0')

            if(I(1) ~= J(1) & I(2) == J(2) & str2num(I(1))/str2num(J(1)) == Num)
                jjj(end+1,:) = [i j Num str2num(I(1)) str2num(J(1))];
            end

            if(I(1) ~= J(2) & I(2) == J(1) & str2num(I(1))/str2num(J(2)) == Num)
                jjj(end+1,:) = [i j Num str2num(I(1)) str2num(J(2))];
            end

            end



        end

    end
end

jjj(1,:) = [];

format rational 
num = jjj(1,3) * jjj(2,3) * jjj(3,3) * jjj(4,3)

