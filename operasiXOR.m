A = not(imread('testpat1.png'));
B = not(imread('circbw.tif'));
[r1 c1] = size(A);
[r2 c2] = size(B);
for x = 1 : r1
for y = 1 : c1
C(x,y) = xor(A(x,y),B(x,y));
end
end
figure, imshow(C);
