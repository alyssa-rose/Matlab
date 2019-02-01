function ClusInfo = KmeansCore(dMat,Par)

%{
Inputs:
-dMat:  data matrix, size nFeat x nSamp
-Par: parameter structure, with fields:
    Par.nClus:  number of clusters
    Par.maxIter:  max iterations to run algorithm
    Par.isMedian:  update method: mean or median

Output:
-ClusInfo:  output structure, with fields:
    ClusInfo.clusIds: vector of cluster assignments, length nSamp
    ClusInfo.centerVecs: matrix of cluster center vectors,
size nFeat x nClus
    ClusInfo.sumDist:  summed total distance to assigned clusters,
length # iterations

Alyssa Rose HW10  04-15-2018
%}

%% initialzing values
centerVecs = InitializeCenters(dMat,Par.nClus);
isConverged = false;
k = 1;

%% loop
while isConverged == false
    % make a copy of our current best guess at cluster centers...
    centerVecsPrev = centerVecs;
    % calculate distance to each cluster center
    distVec = [];
    for g = (1:Par.nClus)
        distVec = [distVec; ComputeDistance(dMat, centerVecs(:,g))];
    end
    % reassign each vector to the nearest center
    ixClusIDs = ReassignClusters(distVec);
    % get summed distances across all clusters
    sumDist(k) = GetSummedDistances(distVec,ixClusIDs);
    % update the cluster centers
    centerVecs = UpdateClusterCenters(dMat,ixClusIDs,Par.nClus);
    % check: are we done?
    isConverged = CheckConvergence(centerVecs,centerVecsPrev,k,Par.maxIter);
    % call convergence check; pass in centerVecsPrev, other inputs
    k = k+1;
end


%% copy results to output structure
ClusInfo.sumDist = sumDist;
ClusInfo.clusIds = ixClusIDs;
ClusInfo.centerVecs = centerVecs;
return