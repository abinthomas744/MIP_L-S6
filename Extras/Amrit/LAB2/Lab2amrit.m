
%Some basic intensity transformation methods
a=imread('grayscale.jpg');
info=imfinfo('grayscale.jpg');
B=info.BitDepth;

%only use a grayscale image because of how the next line is implemented
L=2^B;
s=L-a;
figure,subplot(1,2,1) 
imshow(a);
subplot(1,2,2) 
imshow(s);
imwrite(a,'Original.jpg');
imwrite(s,'Negative.jpg');


m=double(a);
A=.05*log(1+m);
figure,subplot(1,2,1) 
imshow(a);
subplot(1,2,2) 
imshow(A);
imwrite(a,'Original1.jpg');
imwrite(A,'Log_Transform.jpg');