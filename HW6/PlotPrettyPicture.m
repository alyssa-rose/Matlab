%{
uses PrettyPicture function to create 3 graphs

Alyssa Rose  HW6   3-14-18
%}
z = PrettyPicture(pi/2, 0, 0, 1);
x = linspace(-10,10,101);
y = linspace(-8,8,81);

figure(1)
imagesc(z);
colorbar
caxis([-4,4]); %sets colorbar axis
xlabel('y')
ylabel('x')

figure(2)
surfc(z)
colormap(gray)
colorbar
xlabel('y')
ylabel('x')
zlabel('V(x,y)')
shading INTERP %removes crosshatching

figure(3)
[C,h] = contourf(z,7); %creates 7 levels
clabel(C,h) %labels the 7 levels
xlabel('y')
ylabel('x')
colorbar
