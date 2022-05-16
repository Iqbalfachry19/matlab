A = double(imread('tape.png'));
[r c] = size(A);
for x = 1 : r
for y = 1 : c
B(x,y) = A(x,y) ./ 2;
end
end
figure, imshow(uint8(B));
