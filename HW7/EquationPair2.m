function [condNum, bCheck] = EquationPair2
%{
Solves linear equation system and outputs the condition
matrix and checks the answer of the solutions as output bCheck

Alyssa Rose  HW7  03-17-18
%}

%sets up coefficient matrix
A = [0.5,-1;1.02,-2];
%sets up solution matrix
b = [-9.5;-18.8];
sol = A\b;
fprintf('X = %.3f\nY = %.3f\n', sol(1,1),sol(2,1));
%computes condition matrix
condNum = cond(A);
fprintf('Conditional number = %f',condNum);
%checks solutions
bCheck = A * sol;

%creates symbolic functions
syms x
y1 = 0.5*x + 9.5;
y2 = (1.02*x+18.8)/2;
figure(2)
hold on
fplot(y1);
fplot(y2);
xlabel('x')
ylabel('y')
title('solution of linear eq')
hold off

%{
The condition number for this function is significatnly 
higher than that for the first equation (diff between 2.4 and 314).
This could've been predicted based on the graphs also as
equation 1 has a distinct intersection point, whereas equation
2 has lines that run very close to each other (making solving
for their intersection more challenging and more prone to error).
%}
end