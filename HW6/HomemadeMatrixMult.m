function matrixC = HomemadeMatrixMult(matrixA, matrixB)
%{
takes in 2 matrices and outputes their product

Alyssa Rose  HW6  3-14-2018
%}
%finds size of matrices
[rowA, colA] = size(matrixA);
[rowB, colB] = size(matrixB);
%checks if matrices can be multiplied
if colA~=rowB
    matrixC = NaN;
    return
end
matrixC= [];
%finds the products of the matrices
for m = 1:colB
    matrixC=[matrixC matrixA* matrixB(:,m)];
end