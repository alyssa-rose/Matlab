function [isBlizzard, blizzardDuration] = DetermineBlizzard(visibilityMiles,windSpeedMph)
%{
Takes in 2 vectors for wind speed and visibility values and return logical
output for when blizzard occurs, and for the duration of the longest
blizzard

Alyssa Rose    2-12-18
HW3
%}
n = length(visibilityMiles);
count = 0;
blizzardDuration = 0;
isBlizzard=false;
for m=1:n
    if visibilityMiles(m)<=0.5 && windSpeedMph(m)>=30
        count = 1 + count;
    else
        count = 0;
    end
    if count>=4
        isBlizzard = true;
        if  blizzardDuration < count
            blizzardDuration = count;
        end
    end
end
blizzardDuration
return
