function deriv = GradientUneven(y,x)
%{
takes in 2 vectors representing values y(x) and
calculates deriv of function using forward, back,
and centered diff based on index and stores it
into a vector "deriv"

Alyssa Rose    HW5   2-28-18
%}
%checks if lengths are the same
if length(y)~=length(x)
    deriv = NaN
    return
end
%preallocates, calcs. forward diff of 1st element
m = length(x);
deriv = zeros(1,m);
deriv(1) = (y(2) - y(1))/(x(2)-x(1));
%calcs. backward diff of last element
deriv(end) = (y(end) - y(end-1))/(x(end)-x(end-1));
%calculates centered difference
for z = 2:m-1
    deriv(z) = (y(z+1)-y(z-1))/((x(z+1)-x(z-1)));
end
return

