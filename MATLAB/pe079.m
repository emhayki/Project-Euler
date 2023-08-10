
clc; clear;

kelog = [319, 680, 180 ,690, 129, 620, 762, 689, 762, 318, 368, 710, 720, 710, 629,...
         168, 160, 689, 716, 731, 736, 729, 316, 729, 729, 710, 769, 290, 719, 680,...
         318, 389, 162, 289, 162, 718, 729, 319, 790, 680, 890, 362, 319, 760, 316,...
         729, 380, 319, 728, 716]';

kelog = char(string(unique(kelog)));


seen = '';

for i = 1:size(kelog,1)
    for j = 1:size(kelog,2)

        found = find(seen == kelog(i,j));

        if(isempty(found))
            seen(end+1) = kelog(i,j);
        end
        
    end
end

MinSeen = sort(seen);


for i = 1:length(MinSeen)
largerThan = "";
largerThan = kelog(kelog(:,2) == MinSeen(i), 3);
largerThan = [largerThan; kelog(kelog(:,1) == MinSeen(i),2)];
largerThan = [largerThan; kelog(kelog(:,1) == MinSeen(i),3)];
largerThan = unique(largerThan);
   mm(i,:) = [length(largerThan') str2double(string(MinSeen(i)))];
end

mm = sortrows(mm,'descend');
mm = strrep(join(string(mm(:,2)')),' ','')

