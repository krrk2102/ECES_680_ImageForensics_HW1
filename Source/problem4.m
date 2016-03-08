% [psnrPepper, psnrBaboon] = SaveJPGs();

pepperImage = imread('peppers.tif');

standardTable = [ 16 11 10 16 24  40  51  61;
                  12 12 14 19 26  58  60  55;
                  14 13 16 24 40  57  69  56;
                  14 17 22 29 51  87  80  62;
                  18 22 37 56 68  109 103 77;
                  24 35 55 64 81  104 113 92;
                  49 64 78 87 103 121 120 101;
                  72 92 95 98 112 100 103 99 ];
       
optiTable = [ 11  11  12  15  20  27   36   47;
              11  12  15  20  27  36   47   93;
              12  15  20  27  36  47   93   185;
              15  20  27  36  47  93   185  369;
              20  27  36  47  93  185  369  737;
              27  36  47  93  185 369  737  1473;
              36  47  93  185 369 737  1473 2945;
              47  93  185 369 737 1473 2945 5889 ];

fileLen = myOwnJPGEncoder(pepperImage, optiTable);
decodedImage = myOwnJPGDecoder();
figure, imshow(decodedImage);
psnr = PSNRCal(pepperImage, decodedImage);