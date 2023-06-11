
clc; clear; close;

Sundays = 0;

year = 1900;

dd = 1:7;
k = 1;
j = 1;
sm = 31;
newMoth = true;
while(year < 2001)

    if mod(year, 4) == 0 && (mod(year, 100) ~= 0 || mod(year, 400) == 0)
        feb = 29;
       days = 366;
    else
        feb = 28;
       days = 365;
    end

month = [31, feb, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
   

for i = 1:days

theDay = dd(k);


if(newMoth == true && dd(k) == 7 && year > 1900)
    Sundays = Sundays + 1;
end
newMoth = false;

k = k + 1;

    if(k == 8)
        k = 1;
    end

    if(i == sm)
        j = j + 1;

        if(j > 12)
        j = 1;
       sm = 0;
        end

        sm = sm + month(j);
        newMoth = true;
    end

    

    
end
year = year + 1;

end


 Sundays



%%

clc; clear
% Find the day of the week for January 1, 1900
first_day = 2; % Monday

% Initialize the count of Sundays
num_sundays = 0;

% Loop through each month in 1900
for i = 1901:2000
for month = 1:12
    % Find the day of the week for the first day of the month
    day = weekday(datetime(i, month, 1));
    
    % If the first day of the month is a Sunday, increment the count
    if day == 1 % Sunday
        num_sundays = num_sundays + 1;
    end
end
end


disp(num_sundays) % Display the result
