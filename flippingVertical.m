I = imread('circles.png');
[brs kol] = size(I);
J = repmat(0,brs,kol);
mirror = floor(kol/2);
for x = 1 : brs-1
for y = 1 : kol-1
J(x,y) = I((2*mirror)-x, y);
end
end
figure, imshow(uint8(J));
