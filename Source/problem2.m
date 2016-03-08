image = imread('outoffocus.tif');
% figure, imshow(image);

editedImage = sharpenImage(image, 30);
figure, imshow(editedImage);