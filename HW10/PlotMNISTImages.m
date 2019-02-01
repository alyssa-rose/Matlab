load mnistData.mat
close all
 for imgNum = 1:100; 
      newImg = reshape(imagesData(:,imgNum),[28,28])'; % transpose turns sideways 
      imagesc(newImg);
	  colormap gray
      title(num2str(imgNum))
      pause(0.5)
 end