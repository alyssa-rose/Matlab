%{
reads in two images and fades them in and out based on weighted average

Alyssa Rose HW 6   3-13-2018
%}
k = imread('thing1.jpg');
m = imread('thing2.jpg');

for alpha = 0:100
    g = uint8(ImageCombo(k, m, alpha));
    imagesc(g);
    pause(0.01);
end