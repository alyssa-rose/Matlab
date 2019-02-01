function [tempsHot, timesCold, nOK] = HotTubVectors(time,temp)
%{
Function takes in 2 equal sized vectors; temp(Fahrenheit) & time (hours);
and determines how well the hot tub stays within temp range( 102<=temp<=105).

Alyssa Rose  HW4  2-19-18
%}

%extracts temperatures > 105 degrees
tempsHot = temp(temp > 105);

%extracts times when temperature < 102 degrees
t = find(temp < 102);
timesCold = time(t);

%finds # hours when hot tub was in desired range
nOK= sum((temp >= 102) & (temp <= 105));
return