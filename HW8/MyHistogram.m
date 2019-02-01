function [xCen, n] = MyHistogram(dataVec, nBins)
%{
takes in data vector and desired number of bins and 
computes, edges, #elements in bins, and center pt of the bins

Alyssa Rose HW8  03-28-18
%}

%finds max and mins in dataVec
maxVec = max(dataVec);
minVec = min(dataVec);
%finds bin width from range of dataVec
binWidth = (maxVec - minVec)/nBins;
xCen=[];
n=[];
edge=[];

%computes info for last element
edge(nBins) = maxVec;
edge(nBins-1) = maxVec - binWidth;
xCen(nBins) = ((edge(nBins) + edge(nBins-1))/2);
n(nBins) = length(find(edge(nBins-1)<=dataVec & edge(nBins)>=dataVec));

for k = 1:nBins-1
    edge(1) = [minVec];
    %computes rightward edge
    edge(k+1) = edge(k) + binWidth;
    %finds center pt
    xCen(k) = ((edge(k+1) + edge(k))/2);
    %finds #elements in each bun
    n(k) = length(find(edge(k)<=dataVec & edge(k+1)>dataVec));
end
end


