function [yFit,coeff,RSq]=MyPolyPlusSinefit(x,y,polyOrder,isPlotted)
%{
Does same thing as MyPolyFit but also includes adjustments for 
sine and cosine
%}
%% checking input parameters
if length(x)~=length(y) || length(x) < polyOrder+1 || length(y) < polyOrder+1
    yFit = NaN;
    coeff = NaN;
    condNum = NaN;
    RSq = NaN;
    return 
end

if nargin < 4
    isPlotted = 0;
end
%forces data to columns
y = y(:);
x = x(:);
b = y;

%% creates matrix A and additional terms
z = polyOrder + 3;
A(:,(1:z-2)) = x.^(polyOrder:-1:0);
condNum = cond(A);
coeff = A\b;
%creates sin and cosine adjustments
A(:,z-1) = sin(2*pi*x);
A(:,z) = cos(2*pi*x);
H=[A(:,z-1),A(:,z)];
K = H\b;
a = A(:,(1:z-2))*coeff;
s = A(:,z-1:z)*K;
yFit = [a+s];

%% computinf R^2 and plotting
yAvg = mean(y);
ssTot = sum((y - yAvg).^2);
ssRes = sum((y - yFit).^2);
RSq = 1-(ssRes./ssTot);

if isPlotted ==1
    figure(6)
    plot(x,yFit,'b',x,y,'r.')
    axis([2000 2015 360 410]);
end
end
