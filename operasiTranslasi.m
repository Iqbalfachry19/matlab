Tx = 20;
Ty = 50;
A = imread ('circuit.tif');
[brs kol] = size(A);
for x = 1 : brs
    for y = 1 : kol
    B(x+Tx, y+Ty) = A(x,y);
    end
end
B = B(1:brs,1:kol);
figure, imshow (uint8(A));
figure, imshow(uint8(B));
