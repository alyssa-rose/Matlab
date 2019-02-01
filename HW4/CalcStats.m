function outStr = CalcStats(instBPM)
%{
computes statistics (mean, median, std dev)
and defines output string

Alyssa Rose  HW4  2-19-18
%}

%calculates whole number mean value
X = mean(instBPM);
X=round(X);
%calculates whole number median value
Y = median(instBPM);
Y = round(Y);
%calculates standard deviation
Z = std(instBPM);
%prints out values w/ stdev to 1 decimal
outStr = sprintf('Heartrate, BPM: mean %d, median %d, stdev %.1f',X,Y,Z);
return
