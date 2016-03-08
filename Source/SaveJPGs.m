function [psnr1, psnr2] = SaveJPGs()
    % Read 2 images. 
    pepperImage = imread('peppers.tif');
    baboonImage = imread('baboon.tif');
    
    psnrPepper = ones(1, 5);
    % Saving image 1 with different quality factors
    imwrite(pepperImage, 'peppers90.jpg', 'jpg', 'Quality', 90);
    % Reading saved image and calculate PSNR between original image
    pepperImage90 = imread('peppers90.jpg');
    psnrPepper(1) = PSNRCal(pepperImage, pepperImage90);
    imwrite(pepperImage, 'peppers70.jpg', 'jpg', 'Quality', 70);
    pepperImage70 = imread('peppers70.jpg');
    psnrPepper(2) = PSNRCal(pepperImage, pepperImage70);
    imwrite(pepperImage, 'peppers50.jpg', 'jpg', 'Quality', 50);
    pepperImage50 = imread('peppers50.jpg');
    psnrPepper(3) = PSNRCal(pepperImage, pepperImage50);
    imwrite(pepperImage, 'peppers30.jpg', 'jpg', 'Quality', 30);
    pepperImage30 = imread('peppers30.jpg');
    psnrPepper(4) = PSNRCal(pepperImage, pepperImage30);
    imwrite(pepperImage, 'peppers10.jpg', 'jpg', 'Quality', 10);
    pepperImage10 = imread('peppers10.jpg');
    psnrPepper(5) = PSNRCal(pepperImage, pepperImage10);

    psnrBaboon = ones(1, 5);
    % Saving image 2 with different quality factors
    imwrite(baboonImage, 'baboon90.jpg', 'jpg', 'Quality', 90);
    baboonImage90 = imread('baboon90.jpg');
    psnrBaboon(1) = PSNRCal(baboonImage, baboonImage90);
    imwrite(baboonImage, 'baboon70.jpg', 'jpg', 'Quality', 70);
    baboonImage70 = imread('baboon70.jpg');
    psnrBaboon(2) = PSNRCal(baboonImage, baboonImage70);
    imwrite(baboonImage, 'baboon50.jpg', 'jpg', 'Quality', 50);
    baboonImage50 = imread('baboon50.jpg');
    psnrBaboon(3) = PSNRCal(baboonImage, baboonImage50);
    imwrite(baboonImage, 'baboon30.jpg', 'jpg', 'Quality', 30);
    baboonImage30 = imread('baboon30.jpg');
    psnrBaboon(4) = PSNRCal(baboonImage, baboonImage30);
    imwrite(baboonImage, 'baboon10.jpg', 'jpg', 'Quality', 10);
    baboonImage10 = imread('baboon10.jpg');
    psnrBaboon(5) = PSNRCal(baboonImage, baboonImage10);
    
    psnr1 = psnrPepper;
    psnr2 = psnrBaboon;
    
end

