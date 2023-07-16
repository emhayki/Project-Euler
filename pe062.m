
clc; clear;

cubes = (345:10000).^3;
cubeMap = containers.Map('KeyType', 'char', 'ValueType', 'any');

for j = 1:length(cubes)

    a = sort(num2str(cubes(j)));

    if isKey(cubeMap, a)
        cubeMap(a) = [cubeMap(a), cubes(j)];
    else
        cubeMap(a) = cubes(j);
    end

end


for j = 1:length(cubes)
    
    a = sort(num2str(cubes(j)));

    if isKey(cubeMap, a)
        t = cubeMap(a);
        if(length(t) >= 5); break; end
    end

end

t
