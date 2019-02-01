function [GoodClusInfo,BadClusInfo] = KmeansWrapper(dMat,Par,nRepeats)
%{
wrapper code to run KmeansCore repeatedly and find best and worst
results, as measured by the final summed distance for each run
Inputs:  
-dMat, Par: same as KmeansCore (see help there)
-nRepeats:  number of times to repeat kmeans 
Outputs:
-GoodClusInfo:  output of KmeansCore that has the minimum 
    summed distance between each vector and its assigned center
-BadClusInfo:  output of KmeansCore that has the maximum 
    summed distance between each vector and its assigned center

Alyssa Rose HW10 04-15-2018
%}
%% pre allocating
trueSumDist = zeros(1,nRepeats);
ClusInfoCell = cell(nRepeats,3);

%% calls Kmeans core nRepeats time and stores best sumDist
for q = 1:nRepeats
    ClusInfo = KmeansCore(dMat,Par);
    ClusInfoCell(q,:) = struct2cell(ClusInfo);
    trueSumDist(q) = ClusInfo.sumDist(end);
end

%% creates fields and finds best/worst data
fields = {'sumDist','clusIds','centerVecs'};
[~,good] = min(trueSumDist);
[~, bad] = max(trueSumDist);

%% creates cell and converts to struct for readability
GoodClusInfo = cell2struct(ClusInfoCell(good,:),fields,2);
BadClusInfo = cell2struct(ClusInfoCell(bad,:),fields,2);
return