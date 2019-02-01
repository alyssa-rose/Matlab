function [yTest,yFit]=TestPolyFit
%{
Tests MyPolyfit; outputs test vector and fitted vector

Alyssa Rose  HW9  04-03-2018
%}

%% creates x and yTest variables
x = [1:35];
yTest = (3*x.^4) + (1.5*x.^2) + 12;
polyOrder = 4;

%finds true, MyPolyfit and polyfit coeffs
P = [polyfit(x,yTest,polyOrder)]';
g = [3,0,1.5,0,12]';
[yFit,coeff,condNum,rSq]=MyPolyfit(x,yTest,polyOrder,0);
coeff = coeff';

%formats comparisons into table
fprintf('Power\tTrue\tMyPolyfit\tpolyfit\n')
for n = (0:polyOrder)
    fprintf('%i\t %8.2f%8.2f\t %8.2f\n',polyOrder - n, g(n+1) ,coeff(n+1),P(n+1));
end