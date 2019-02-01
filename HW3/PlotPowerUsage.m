load powerDataset.mat
time = 15:15:180;
powerInterp = [];
for k= 1:length(time)
    powerInterp(k) = LinearInterp(time(k),timeMinutes,powerWatts);
end
plot(timeMinutes,powerWatts,'b-x', time,powerInterp,'ro')
title('Power usage over time');
xlabel('time')
ylabel('power in watts')

    
    