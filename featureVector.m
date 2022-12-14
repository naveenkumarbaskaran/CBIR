function f = featureVector(image)
% %=======================================================================
% This function computes the feature vector of each image
% The feature vector contains color moment and lbp
% Author: Naveen Kumar Baskaran
% Last modified: 12 December 2022
% %=======================================================================

% calculate color moment of input image
imag_cm = colorMoment(image);

% calculate local binary pattern of input image
imag_lbp = lbp(image, 3);

% vectorize the local binary patern
imag_lbp = imag_lbp(:);

% transpose lbp vector
imag_lbp = imag_lbp';

% feature vector
f = [imag_cm imag_lbp];
end