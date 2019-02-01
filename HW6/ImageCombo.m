function imgOut = ImageCombo(img1,img2,alphaPercent)
%{
takes in two images and a number to calc the weighted
average of the images

Alyssa Rose HW 6   3-13-2018
%}
if alphaPercent<0
    alphaPercent = 0;
elseif alphaPercent >100
    alphaPercent =100;
end
%reads in 2 images and converts to double    
img1 = double(img1);
img2 = double(img2);
%calcs weighted average and converts back to uint8
imgOut = uint8((((alphaPercent)/100)*img1) + (((100-alphaPercent)/100)*img2));
return
end