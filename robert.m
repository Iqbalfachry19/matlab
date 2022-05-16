% baca citra dan memberikan noise salt & pepper
I=imread('pears.png');
I=imnoise(I,'salt & pepper');
imshow(I), title('Citra Asli Terkena Noise');
Ig=rgb2gray(I);
Igm=medfilt2(Ig,[5 5]);
Mx=[1 0;0 -1];
My=[0 -1;1 0];
Gy=imfilter(double(Igm),My,'symmetric');
Gx=imfilter(double(Igm),Mx,'symmetric');
M=sqrt(Gx.^2+Gy.^2);
mmax=max(max(M));
mmin=min(min(M));
T=(mmax+mmin)/2;
T=(T/mmax); % normalisasi threshold
M=M/mmax; % normalisasi citra
miu1=.1;
miu2=.2;
del_miu=abs(miu1-miu2);
[r c]=size(M);
an=1;
while an<=500
for ii=1:r
for jj=1:c
if M(ii,jj)<T
M1(ii,jj)=M(ii,jj);
else
M2(ii,jj)=M(ii,jj);
end
end
end
miu1=mean2(M1);
miu2=mean2(M2);
T=(miu1+miu2)*2;
an=an+1;
end
for ii=1:r
for jj=1:c
if M(ii,jj)<T
M(ii,jj)=0;
else
M(ii,jj)=1;
end
end
end
figure, imshow(M), title('Program Sendiri Untuk Robert Filtering');