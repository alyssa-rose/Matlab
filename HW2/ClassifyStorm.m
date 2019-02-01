function stormType = ClassifyStorm(windSpeedMph)
%{
Alyssa Rose   2-3-18

Function returns type of storm based on wind speed
%}

%rounds to eliminate decimals in wind speed input
newWind = round(windSpeedMph);
if (newWind <= 38)
    stormType ='tropical depression';
elseif (newWind>=39) && (newWind<74)
    stormType = 'tropical storm';
else
    stormType='hurricane';
end

    
   
    