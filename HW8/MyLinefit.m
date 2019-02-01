function [yFit, coeff, rSq] = MyLinefit(x,y,isPlotted)
%{
takes in x & y values and a boolean (to determine whether
or not to graph) and finds a linear approx.

Alyssa Rose HW8  03-28-18
%}
%forces isPlotted to be 0 if not inputed
if nargin <3
    isPlotted = 0;
end
%checks x and y meet length conditions
if length(x)~=length(y) || length(x)<2 || length(y)<2
    yFit= NaN;
    rSq=NaN;
    coeff=NaN;
    return
end
%forces x and y to be row vectors
[M,N]=size(y);
[M2,N2] = size(x);
if M~=1
    y = y';
end
if M2~=1
    x = x';
end
%creates A vec made of x and 1's sets y as a column
c = ones(1,length(x))';
A(:,1) = x';
A(:,2) = c;
b = y';
%creates coeff vec with m and b values
coeff = A\b;
%uses m and b to create a fitted line
yFit = coeff(1,1).*x + coeff(2,1);
%computes R value between y and yFit
rSq = CalcRsquared(y,yFit);
%plots if 1 was passed in for isPlotted
if isPlotted==1
    plot(x,yFit,'b',x,y,'ro');
    title(sprintf('R2 = %f', rSq));
    xlabel('independent variable')
    ylabel('dependent variable')
%if isPlotted==0, computes normal values (no plotting)
else
    coeff = A\b;
    yFit = coeff(1,1).*x + coeff(2,1);
    rSq = CalcRsquared(y,yFit);
return
end