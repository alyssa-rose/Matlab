function isConverged = CheckConvergence(centerVecs,centerVecsOld,cnt,maxIter)

% Inputs:
%   centerVecs is an nFeat x numClus matrix holding all cluster
%   center vectors
%   centerVecsOld is similar, but for previous best estimate of centers
%   cnt is number of times algorithm has gone through the while loop
%   maxIter is maximum number of iterations allowed
% Output:
%   isConverged is a logical variable; true if algorithm is converged


% convergeThresh defined as constant (could be added to Par)
convergeThresh = 0.1;

% first, check if max num iter exceeded
if cnt > maxIter 
	isConverged = true;
else
	for k = 1 : size(centerVecs,2)
		delta(k) = ComputeDistance(centerVecs(:,k),...
			centerVecsOld(:,k));
	end
	isConverged =  max(delta) < convergeThresh;
	
end