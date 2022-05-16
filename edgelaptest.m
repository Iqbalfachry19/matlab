clear; clc;
I = imread('rice.png');
Hsl = laplacian(im2double(I), 0.25);
imshow(I);
figure, imshow(im2uint8(Hsl));