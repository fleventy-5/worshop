clc; % clear command window
clear all;% clear all system memory
close all;% close all fig
a=imread("tree.jpeg");%read an image 

figure;
subplot(5,2,1);%subplot of row m=5 X n=2 grid with k=2 image in each row
imshow(a);%show image
subplot(5,2,2);
imhist(a);%lotting histogram of image

b=rgb2gray(a);%conversion to grayscale
subplot(5,2,3);
imshow(b);
subplot(5,2,4);
imhist(b);

disp(size(a));%display size
disp(size(b));

%resize
k=imresize(a,[177,177]); %resize with specified width and height
subplot(5,2,5);
title("Original");
imshow(a);%original
subplot(5,2,6);
imshow(k);%resize image

l=imresize(a,2);%resize with mgnification factor
subplot(5,2,7);
imshow(l);

m=imresize(a,2,"bilinear");%resize with mgnification factor and interpolation factor
subplot(5,2,8);
imshow(m);

%resize with antialiasing especially in shrinking
n= imresize(a,.75,"Antialiasing",false);
subplot(5,2,9);
imshow(n);