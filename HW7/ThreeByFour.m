function x = ThreeByFour
%{
finds the solution of linear equations of a non square 
matrix

Alyssa Rose  HW7  03-17-18
%}
A = [1,-2,1; 2,-5,3; 1,2,2; 2,0,3];
b = [2,6,4,6]';
x = A\b;
bCheck = A*x;

%{
It is not possible to calculate the determinant of the matrix
since the "det" function in Matlab requires it to be a square
matrix (NxN). Since it isn't, it's not possible to calculate
the determinant.

The values stored in x and the computed values of bCheck match
the b matrix used in the function exactly. 
%}
end