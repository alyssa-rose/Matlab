function [polyOut,areaIn,areaOut,detA] = PolygonWarper(polyIn,A)
%{
Inputs:
-polyIn is an N x 2 matrix (N = # of vertices) for input polygon
-A is an 2 x 2 matrix
Outputs:
-polyOut has the N x 2 warped polygon vertices
-areaIn is the area of the input polygon
-areaOut is the area of the warped polygon
-detA is the determinant of A

Alyssa Rose  HW7  03-17-18
%}
%calcs. determinate of A
detA = det(A);
%finds area of original polygon
areaIn = polyarea(polyIn(:,1),polyIn(:,2));
%finds center point of polygon
cenX = sum(polyIn(:,1))/ numel(polyIn(:,1));
cenY = sum(polyIn(:,2))/ numel(polyIn(:,2));
%adjusts polygon to center
polyOut(:,1) = polyIn(:,1) - cenX;
polyOut(:,2) = polyIn(:,2) - cenY;
%warps the polygon by some factor "A" (matrix)
polyOut = polyOut * A;
%shifts polygon back to center
polyOut(:,1) = polyOut(:,1) + cenX;
polyOut(:,2) = polyOut(:,2) + cenY;

%finds area of new polygon
areaOut = polyarea(polyOut(:,1),polyOut(:,2));

imgOut = poly2mask(polyOut(:,1),polyOut(:,2),256,256);
imagesc(imgOut);
colorbar;
colormap;
%plots original and new polygon using polymask
%commented out to avoid overriding graphs in WarpingScript
%{
subplot(2,1,1)
imgIn = poly2mask(x,y,imageSize,imageSize);
imagesc(imgIn)
colorbar
colormap

subplot(2,1,2)
imgOut = poly2mask(xOut,yOut,imageSize,imageSize);
imagesc(imgOut)
colorbar
colormap
%}
end



  
