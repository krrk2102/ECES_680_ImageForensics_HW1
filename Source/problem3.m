image = imread('peppersNoise1.tiff');
figure, imshow(image);

% Average filter of 3 * 3 
avgFilter3 = fspecial('average', 3);
avgFilteredImage3 = imfilter(image, avgFilter3);
figure, imshow(avgFilteredImage3);

% Average filter of 5 * 5
avgFilter5 = fspecial('average', 5);
avgFilteredImage5 = imfilter(image, avgFilter5);
figure, imshow(avgFilteredImage5);

% Median filter of 3 * 3
midFilteredImage3 = medfilt2(image, [3 3]);
figure, imshow(midFilteredImage3);

% Median filter of 5 * 5
midFilteredImage5 = medfilt2(image, [5 5]);
figure, imshow(midFilteredImage5);

% Create filters
Sx = fspecial('sobel');
Sy = Sx';
% Applying filter in both directions
sobelImageX = imfilter(double(midFilteredImage3), Sx);
sobelImageY = imfilter(double(midFilteredImage3), Sy);
% Calculate gradients
sobelImage = uint8(sqrt(sobelImageX .^2 + sobelImageY .^2));
for i = 1 : size(sobelImage, 1)
    for j = 1 : size(sobelImage, 2)
        if sobelImage(i, j) > 200
            sobelImage(i, j) = 255;
        else 
            sobelImage(i, j) = 0;
        end
    end 
end
figure, imshow(sobelImage);

sobelEdge = edge(image, 'sobel', 0.15);
figure, imshow(sobelEdge);