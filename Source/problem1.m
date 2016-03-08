image = imread('moonPhobos.tif');
figure, imshow(image);

editedImage = gammaCorrection(image, 0.1);
figure, imshow(editedImage);
figure, imhist(editedImage);