function dist = ComputeDistance(dMat, centerVec)
%{
computes Euclidian distance from each data vector to the vector centerVec 
Inputs: dMat is data matrix, size nFeat x nMeas 
        centerVec a vector, size nFeat x 1
Output: dist is 1 x nMeas vector of Euclidian distances

Alyssa Rose  HW10  04-11-2018
%}

%finds Euclidian dist. using vector math
dist = sqrt(sum((dMat-centerVec).^2));
end