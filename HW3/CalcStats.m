function outStr = CalcStats(instBPM)
% function outStr = CalcStats(instBPM)
% computes statistics (mean, median, std dev)
% and defines output string


% Alyssa Rose
X = mean(instBPM);
X=round(X);

Y = median(instBPM);
Y = round(Y);

Z = std(instBPM);

outStr = sprintf('Heartrate, BPM: mean %d, median %d, stdev %.1f',X,Y,Z);
return
