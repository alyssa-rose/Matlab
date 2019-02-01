%{
Computes the integrals of 3 functions

Alyssa Rose    HW5   2-28-18
%}

%creates symbolic function respect to x
syms x
f0 = sin(x);
f1 = sin(1./x);
f2 = 1./(1 + 2*x + x.^3);
%plots all 3 graphs on one plot
figure
xlabel('x')
ylabel('f(x)')
title('Graphs of f0, f1, f2')
hold on
fplot(f0,[-2,2],'g-')
fplot(f1,[-2,2],'m-')
fplot(f2,[-2,2],'b-')
legend('f0','f1','f2')
hold off
%finds integral from x=0.05 to 1
intf0 = int(f0,x,0.05,1);
intf1 = int(f1,x,0.05,1);
intf2 = int(f2,x,0.05,1);
%prints to screen
pretty(intf0)
pretty(intf1)
pretty(intf2)
%prints numerical value of integral to double precision #
fprintf('integral f0 = %0.4f\n', double(intf0))
fprintf('integral f1 = %0.4f\n', double(intf1))
fprintf('integral f2 = %0.4f\n\n', double(intf2))

%{
MatLab was not able to give an analytical solution
since integration of f2 would've required an x^2 term
in the integral by the rules of u-substitution of calculus.
Since the term wasn't present, there was no way for
the integral to be expressed analytically. 
%}

A = @(x) sin(x);
B = @(x) sin(1./x);
C = @(x) 1./(1 + 2*x + x.^3);

intA = integral(A,0.05,1);
intB = integral(B,0.05,1);
intC = integral(C,0.05,1);

fprintf('integral A = %0.4f\n', double(intA))
fprintf('integral B = %0.4f\n', double(intB))
fprintf('integral C = %0.4f\n', double(intC))
