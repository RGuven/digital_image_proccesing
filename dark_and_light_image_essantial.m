clc;
clear all;
close all;
I=imread('test1.jpeg');

imshow(I);
[m,n,c]=size(I);
I_gray=rgb2gray(I)
figure;
imshow(I_gray);
I_gray=double(I_gray);
figure;
%hist(I_gray);

% if gamma 0<gamma<1; your image will see lightly
gamma=0.5
r=double(I_gray/255);%input image
s=r.^gamma % output formula is [s=r^gamma]
I_s=uint8(s*255);
figure;imshow(I_s);title('Gamma 0.5');
figure;
hist(double(I_s));

%if gamma>1 ;your image will darkly
gamma1=2
r=double(I_gray/255);%input image
s=r.^gamma1 % output formula is [s=r^gamma]
I_s1=uint8(s*255);
figure;imshow(I_s1);title('Gamma 2');

figure;
hist(double(I_s1));
figure;

new_image=255-I
imshow(new_image);
