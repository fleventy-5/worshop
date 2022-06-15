clc;
clear all;
close all;

x= imread("clock.jpg");
for i=1:10
    H=fspecial('average',[i,i]);
    image= imfilter(x,H);
    imshow(x);
    drawnow;
end
