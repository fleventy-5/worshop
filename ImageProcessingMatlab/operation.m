clc;
clear all;
close all;

%add
a = imread("rice.png");
b= imread("cameraman.tif");

a_size=size(a);
b_size=size(b);
%disp(a_size); disp(b_size);
%adding with manually using for loop
for i=1:a_size
    for j = 1:b_size
        out(i,j)=(a(i,j)+b(i,j));
    end
end
subplot(4,2,1);
imshow(out);

subplot(4,2,2);
imshow(a-b);

subplot(4,2,3);
imshow(a+100);

subplot(4,2,4);
imshow(b/10);

subplot(4,2,5);
imshow(a);

subplot(4,2,6);
imshow(b);

col_img=imread("tree.jpeg");
disp(impixel(col_img,120,20));%getting rgb val at x=120 y=20

subplot(4,2,7);
x=imcomplement(col_img);
imshow(x);%complement

subplot(4,2,8);
imshow(imabsdiff(col_img,x));%absolute diff of two image





