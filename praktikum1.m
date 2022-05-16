 f = imread('E:\data\kuliah\sem 5\pengolahan citra\Image-20210913T075204Z-001\Image\rice.png');
 
 figure,imshow(f);
 imwrite(f,'rice_01.png');
 info = imfinfo('rice_01.png');
disp(info);