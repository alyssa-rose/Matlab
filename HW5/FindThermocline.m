%{ 
Using depth (meters) and temp(celsius), the thermocline
(area where temp change is greatest) can be found and
is plotted as a red dot with the title telling the depth
at which the thermocline occurs

Alyssa Rose    HW5   2-28-18
%}

load thermoclineData.mat
%preallocates
derivThermo = zeros(1,length(depthMeters));
%finds derivative
derivThermo = GradientUneven(tempCelcius, depthMeters);
[thermocline,t] = min(derivThermo)
%t is index # where thermocline occurs
%t is used to find temp and depth @thermocline
x = tempCelcius(t);
y = depthMeters(t);

%plots graph and thermocline as red dot
plot(tempCelcius,depthMeters,'c*', x, y,'ro')
set(gca,'Ydir','reverse');
xlabel('temperature (celsius)')
ylabel('depth (meters)')
title(sprintf('Thermocline depth: %.1f meters',y))
