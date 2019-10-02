I=imread('test.jpg');
I=rgb2gray(I);
imshow(I);
k=input('give me bit size (0~7): ');
I=double(I);

I_k=(I/255)*(2^k-1);
I_k=round(I_k);

show_I=(I_k/(2^k-1))*255;
figure;
imshow(uint8(show_I));
imwrite(show_I,'bit_converter.jpg');
