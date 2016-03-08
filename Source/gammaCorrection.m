function editedImage = gammaCorrection(originalImage, gammaValue)
    % Check if input gamma is positive.
    if (gammaValue <= 0)
         error('Input gamma value cannot be non positive.');
         editedImage = originalImage;
    else
        % Convert image from uint8 to double.
        originalImage = double(originalImage);
        % Modify input image according to given mapping function.
        editedImage = 255 * (originalImage / 255) .^ gammaValue;
        % Convert the image back to uint8. 
        editedImage = uint8(editedImage);
    end
end