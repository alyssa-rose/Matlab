%{
script evaluating GradientUneven vs gradient function

Alyssa Rose    HW5   2-28-18
%}

%creates equation evaluated respect to x
n = @(x) 3*x.^4 - 1.1*x.^2 + 4;
%sets up vector of 41 x values w/ 0.1 spacing
x = 1:0.1:5;
%stores equation values at each x into y
y = n(x);
%creates derivatives using the 2 seperate functions
dz = gradient(y)/0.1;
dg = GradientUneven(y,x);
%calcs. error between 2 and prints out to 20 decimals
fprintf('Error of even spacing: %.20f\n', RmsError(dg,dz))


%uneven spacing
a = [0.1 0.10017 0.1003 0.1004 0.10042];
%creates original equation and deriv. equation
normEq = @(x) 3*x.^4 - 1.1*x.^2 + 4;
derivEq = @(x) 12*x.^3 - 2.2*x;
%finds values of equations at each x value
b = normEq(a);
c = derivEq(a);
%calculates deriv. with GradientUneven and compares
%to actual deriv. equation
derivNorm = GradientUneven(b,a);
fprintf('Error of uneven spacing: %.20f\n', RmsError(derivNorm,c))


%uneven w/ smaller spacing
aa = [0.1 0.10000017 0.1000003 0.1000004 0.10000042];
normEq = @(x) 3*x.^4 - 1.1*x.^2 + 4;
derivEq = @(x) 12*x.^3 - 2.2*x;
b = normEq(aa);
c = derivEq(aa);
derivNorm = GradientUneven(b,aa);
fprintf('Error of smaller spacing: %.20f\n', RmsError(derivNorm,c))



%{ 
The error cannot be exactly 0 due to rounding errors
and the precision of the numbers. Double precision can
only give about 15 to 16 decimal points of error, which 
is less than the 20 being printed out. Since the #'s 
aren't exact and machine epsilon has to be accounted for
(precision of MatLab), then it makes sense that the error
wouldn't be exactly zero.

The smaller the spacing is, the smaller the error will
be. Since the deriv (or tangent line speaking mathematically)
becomes smaller, the approximation becomes more precise.
%}
