function iPeaks  = FindEcgPeaks(ecg,threshold)
%{
find samples in input vector 'ecg' that are
peaks, and are above the value 'threshold'

Alyssa Rose  HW4  2-19-18
%}
n=length(ecg);
iPeaks = [];

%checks if first value is a peak
if (ecg(1) > threshold) && (ecg(1)> ecg(2))
    iPeaks(1) = 1;
end
%checks if current value is local max and if
%the peak is greater than the threshold
for m = 2:(n-1)
    if (ecg(m)>ecg(m-1))&& (ecg(m)>ecg(m+1))
        if ecg(m)>threshold
            iPeaks = [iPeaks, m];
        end
    end
end

%checks if last value is a peak
if (ecg(n)> ecg(n-1)) && (ecg(n) > threshold)
    iPeaks(n) = n;
end

%gets rid of zeros, only stores values of peaks
delete = iPeaks ~= 0;
iPeaks = [iPeaks(delete)];
return