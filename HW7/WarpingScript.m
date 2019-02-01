%{
Graphs polygon subjected to different scaling matrices

Alyssa Rose  HW7  03-17-18
%}

load posStarting.mat
%original polygon
subplot(2,2,1)
PolygonWarper(posStarting,eye(2));
title('original')
%rotated polygon
subplot(2,2,2)
A = [cos(10*(pi/180)), -sin(10*(pi/180)); sin(10*(pi/180)) cos(10*(pi/180))];
[polyOut,areaIn,areaOut,detA] = PolygonWarper(posStarting,A);
title('rotated')
fprintf('rotation: determinant is %.3f, ratio of (new area/old area) is %.3f\n', detA , areaOut/areaIn)
%scaled polygon
subplot(2,2,3)
I = [eye(2)*0.5];
[polyOut,areaIn,areaOut,detA] = PolygonWarper(posStarting,I);
title('scaled')
fprintf('scaled: determinant is %.3f, ratio of (new area/old area) is %.3f\n', detA , areaOut/areaIn)
%sheared polygon
subplot(2,2,4)
S = [.25,2;.75,.3];
[polyOut,areaIn,areaOut,detA] = PolygonWarper(posStarting,S);
title('sheared')
fprintf('sheared: determinant is %.3f, ratio of (new area/old area) is %.3f\n', detA , areaOut/areaIn)

%{
the absolute value of the ratio of new area to old area and the determinant are equivalent
%}