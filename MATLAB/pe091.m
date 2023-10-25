
clc; clear; close;

    N = 50; 
count = 0;

for x1 = 0:N
    for y1 = 0:N
        for x2 = 0:N
            for y2 = 0:N
                if (x1 ~= 0 || y1 ~= 0) || (x2 ~= 0 || y2 ~= 0)
                    O = [0, 0];
                    P = [x1, y1];
                    Q = [x2, y2];

                    OP_squared = (O(1) - P(1))^2 + (O(2) - P(2))^2;
                    PQ_squared = (P(1) - Q(1))^2 + (P(2) - Q(2))^2;
                    OQ_squared = (O(1) - Q(1))^2 + (O(2) - Q(2))^2;

                    sides = sort([OP_squared, PQ_squared, OQ_squared]);

                    if sides(1) > 0 && sides(1) + sides(2) == sides(3)
                        count = count + 1;
                    end
                end
            end
        end
    end
end

uniqueTriangles = count / 2
