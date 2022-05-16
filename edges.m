clear; clc;
I = imread('eight.tif');
Hsl = edge_detection(im2double(I), 0.25);
imshow(I);
figure, imshow(im2uint8(Hsl));