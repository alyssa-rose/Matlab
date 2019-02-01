function rSquared = CalcRsquared(y, yfit)
%{
takes in 2 y vectors and finds how well data fits
by computing a R value(closer to 1, the better the fit)

Alyssa Rose HW8  03-28-18
%}
%checks if vectors are same length
if length(y) ~= length(yfit)
    rSquared = NaN;
    return
end
%finds the sizes of the vectors and forces them
%to be row vectors
[M,N]=size(y);
[M2,N2] = size(yfit);
if M~=1
    y = y';
end
if M2~=1
    yfit = yfit';
end
%finds avg,ssTot,ssRes and computes the R value
yAvg = mean(y);
ssTot = sum((y - yAvg).^2);
ssRes = sum((y - yfit).^2);
rSquared = 1-(ssRes./ssTot);
end