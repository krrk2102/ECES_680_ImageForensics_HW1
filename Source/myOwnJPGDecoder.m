function image = myOwnJPGDecoder()

    % Recover zigzag image from entropy decoder
    [row,col,blockSize,quaMatrix,zImage] = JPEG_entropy_decode('');  
    image = ones(row, col);
    rowIndex = 1;
    colIndex = 1;
    % Recover image from zigzaged image
    for i = 1 : size(zImage, 1)
        image(rowIndex : rowIndex+blockSize-1, colIndex : colIndex+blockSize-1) = Vector2ZigzagMtx(zImage(i, :));
        colIndex = colIndex + blockSize;
        if colIndex > col
            colIndex = 1;
            rowIndex = rowIndex + blockSize;
        end
    end

    % Performing invert quantization
    image = blkproc(image, [blockSize blockSize], 'x .* P1', quaMatrix);
    % Performing invert DCT
    image = blkproc(image, [blockSize blockSize], 'idct2(x)');
    image = uint8(image + 128);

end

