I = imread('testpat1.png');
[brs kol] = size(I);
J = repmat(0,brs,kol);
mirror = floor(brs/2);
for x = 1 : brs-1
for y = 1 : kol-1
    J(x,y) = I(x, (2*mirror)-y);
end
end
figure, imshow(uint8(J));
