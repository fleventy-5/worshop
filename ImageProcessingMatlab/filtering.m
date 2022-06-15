clc;
clear all;
close all;

%contrast enchancement
bw_image= imread("tire.tif");
montage({bw_image,imadjust(bw_image),histeq(bw_image),adapthisteq(bw_image)},"Size",[1 4]);%creating a montage
title("Original Image and Enhanced Images using imadjust, histeq, and adapthisteq");

%filtering
I = imread('cameraman.tif');
imshow(I);

%motion filte to blur image
subplot(3,1,1);
H = fspecial('motion',20,45);
MotionBlur = imfilter(I,H,'replicate');
imshow(MotionBlur);

%a disk filter to blurr
subplot(3,1,2);
H = fspecial('disk',10);
blurred = imfilter(I,H,'replicate'); 
imshow(blurred);

%gausian filetr
subplot(3,1,3);
H= fspecial('gaussian',10,6);
gaus= imfilter(I,H,'replicate');
imshow(gaus);

