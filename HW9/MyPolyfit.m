function [yFit,coeff,condNum,rSq]=MyPolyfit(x,y,polyOrder,isPlotted)
%{
Creates a fit for polynomial functions using given x,y and desired
poly order values and outputs a fitted graph, coeff matrix, condition
number and the R^2 value for the fit

Alyssa Rose  HW9  04-03-2018
%}

%% checks if vectors meet requirements
if length(x)~=length(y) || length(x) < polyOrder+1 || length(y) < polyOrder+1
    yFit = NaN;
    coeff = NaN;
    condNum = NaN;
    rSq = NaN;
    return
end

%forces isPlotted to be 0 if nothing passed in
if nargin < 4
    isPlotted = 0;
end


%% sets up A and solves for coeff
%forces x,y to be columns
y = y(:);
x = x(:);
b = y;
%creates matrix
z = polyOrder + 1;
A = zeros(length(x), polyOrder+1);
A(:,(1:z)) = x.^(polyOrder:-1:0);
condNum = cond(A);
coeff = A\b;

%finds yFit
yFit = A*coeff;

%% calcs. R^2 and plots
yAvg = mean(y);
ssTot = sum((y - yAvg).^2);
ssRes = sum((y - yFit).^2);
rSq = 1-(ssRes./ssTot);

if isPlotted ==1
    plot(x,yFit,'b',x,y,'ro')
    title(sprintf('Poly order %i , R^2 = %1.4f', polyOrder,rSq))
    xlabel('Independent Variable')
    ylabel('Dependent Variable')
end
end
