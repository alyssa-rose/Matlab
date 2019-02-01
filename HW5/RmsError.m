function err = RmsError(y1,y2)
%{
Takes in 2 output value vectors (the derivative)
and determines the error in difference between the 2

Alyssa Rose    HW5   2-28-18
%}
z = length(y1);
w = length(y2);

%checks if same length and vector at least size 1
if z==w && z >=1
    %computes the error between the 2 vectors from first
    %element until last one using equation
    err = sqrt((1/z).*(sum((y1(1:z)-y2(1:z)).^2)));
else
    err = NaN;
    return
end
