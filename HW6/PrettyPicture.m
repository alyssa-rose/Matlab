function vMatrix = PrettyPicture(a,b,c,k)
%{
takes in a,b,c, and k(numbers that change the graph values)
and creates a matrix of equation outputs using x,y,a,b,c,k to 
create a function. 

Alyssa Rose  HW6  3-18-2018
%}
%creates x and y values
x = linspace(-10,10,101);
y = linspace(-8,8,81);
vMatrix = zeros(101,81);
%creates a matrix with output values
for n=1:101
    for m=1:81
        vMatrix(n,m) = cos(a + k*(sqrt(3)*y(m) + x(n))/2)+ cos(b + k*(sqrt(3)*y(m) - x(n))/2)+ cos(c + k*x(n));
    end
end
