close all
clear
clc

% %=======================================================================
% This function computes the feature vector of each image
% The feature vector contains color moment and lbp
% This function should be run before running cbir_rank.m
% Author: Naveen Kumar Baskaran
% Last modified: 12 December 2022
% %=======================================================================

% folder for the images
imgpath = 'image.orig';

% finding feature vector of each images
imglist = dir(imgpath);
for i=1:size(imglist,1)
    n = imglist(i).name;
    imgname = [imgpath '/' n];
    if (n(1) ~= '.')
        imgfind = imread(imgname);
        fvect(i, :) = featureVector(imgfind); %#ok<SAGROW>
        disp(['feature fector for ' imgname ' has been extracted']);
    end
end

save('fvect.mat','fvect');