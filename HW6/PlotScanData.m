%{
plots SimScanner data

Alyssa Rose HW6  3-14-2018
%}
z = SimScanner(100,80,0.05,2);
surf(z);
ylabel('x')
xlabel('y')
colorbar
title('Travel Time')
