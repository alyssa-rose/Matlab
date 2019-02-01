function instBPM = CalcInstHR(tvec,iPk)
%{
given a time vector tvec and list of samples for peaks,
returns a vector instBPM with the instantaneous beats per minute

Alyssa Rose  HW4  2-19-18
%}

%converts sec to minutes and creates empty vector
tvec = tvec./60;
instBPM = [];
if length(iPk)<2
    instBPM = 0;
    return
end
%calculates heart rate and stores it in instBPM
for k =1:length(iPk)-1
    heartRate = 1/(tvec(iPk(k+1))- tvec(iPk(k)));
    instBPM = [instBPM heartRate];
end
return
