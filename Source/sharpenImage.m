function editedImage = sharpenImage(image, alpha)
    % Initialize Laplacian filter parameter
    laplacianFilter = [ 0 -0.25 0; -0.25 1 -0.25; 0 -0.25 0 ];
    image = double(image);
    % Get high frequency information by filtering the image
    highFreq = imfilter(image, laplacianFilter);
    % Enhance high frequency information
    editedImage = image + alpha * highFreq;
    % Convert image back to uint8
    editedImage = uint8(editedImage);
end

