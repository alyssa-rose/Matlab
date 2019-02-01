function centerVecs = InitializeCenters(dMat,nClus)
%{
assigns centerVec nClus # of random columns from dMat; nClus is
an integer, dMat is a matrix; centerVec size nFeat x nClus

Alyssa Rose  HW10  04-11-2018
%}
%finds dimensions dMat
[m,n] = size(dMat);
%creates random variable dMat column by nClus size
p = randperm(n, nClus);
%creates center vecs
centerVecs = dMat(:,p);
end