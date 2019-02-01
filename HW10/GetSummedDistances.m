function sumDist = GetSummedDistances(dist,clusIDs)
%{
Sums up the distance from every data vector to its assigned cluster
center.
Inputs: dist is nClus x nMeas matrix of distances to cluster centers
clusIds is the cluster number assigned to each example (length nMeas)
Output: sumDist is a scalar (1x1) holding summed distances from each measurement
to its corresponding cluster center  

 Alyssa Rose  HW10  04-11-2018
%}

%preallocate/initialize
[~,nMeas]= size(dist);
sumDist = 0;
%creates sumDist
for k= 1:nMeas
    sumDist = sumDist + dist(clusIDs(k), k);
end
end