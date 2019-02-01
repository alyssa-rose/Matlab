function cosx = CosApproxConverge(x,epsThresh)
%{
Converts cosine of a number in degrees with an error less that epsThresh

Alyssa Rose    2-12-18
HW3
%}
error = 1;
cosOld=0;
cosNew=0;
m=0;
while error >= epsThresh
    cosOld = cosOld + ((-1).^m).*(x.^(2*m))/MyFactorial(2.*m);
    cosNew =  cosOld +((-1).^(m+1)).*(x.^(2.*(m+1)))/MyFactorial(2.*(m+1));
    error = abs(cosOld-cosNew);
    m=m+1;
end
cosx = cosNew;
