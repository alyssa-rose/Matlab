function [yTest,yFit, yFit1samp] = TestLinearFit
%{
tests MyLinefit function with pre chosen x, y, and b values

Alyssa Rose HW8  03-28-18
%}
%creates variables
x = [1,4,2,6,8,4,5,3,11,9];
m = 2.145;
b = 6.4532;
%finds y vec from pre declared variables
yTest = (m.*x)+b;

%stores line approx of x and yTest in yFit
[yFit,coeff,rSq] = MyLinefit(x,yTest,1);
fprintf('True slope=%.5f True intercept=%.5f\nEst slope=%.5f Est intercept=%.5f\n\n', m,b,coeff(1,1), coeff(2,1))

%intentionally passes in faulty parameters 
%to check NaN returned
[yFit1samp,coeff,rSq] = MyLinefit(x,[1],1);
fprintf('x || y value doesn''t meet conditions, yFit1samp=%f', yFit1samp);
end
