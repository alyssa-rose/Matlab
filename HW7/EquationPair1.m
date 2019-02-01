function [condNum, bCheck] = EquationPair1
%{
Solves linear equation system and outputs the condition
matrix and checks the answer of the solutions as output bCheck

Alyssa Rose  HW7  03-17-18
%}
%sets up coeffecient matrix
A = [0.77,1;2.5,-1.7];
%sets up solution matrix
b = [5.25;2];
sol = A\b;
%prints out solution values of x and y
fprintf('X = %.3f\nY = %.3f\n', sol(1,1),sol(2,1));
%computes condition matrix
condNum = cond(A);
fprintf('Conditional number = %f',condNum);
%checks solution
bCheck = A * sol

%creates symbolic functions of the 2 eqs.
syms x
y1 = -0.77*x + 5.25;
y2 = (2.5*x-2)/1.7;
figure(1)
hold on
fplot(y1);
fplot(y2);
xlabel('x')
ylabel('y')
title('solution of linear eq')
hold off
end
%{
the lines appear to cross close to (3,3), which is approximate
to the solution of the equations, (2.868, 3.041)
%}
