clc; close all; clear all; warning off;

c=imread('C:\Users\admin\Documents\1702\cropped.jpg');
bi=im2bw(c);

canny=edge(bi,'canny'); 
log=edge(bi,'log');
prewitt=edge(bi,'prewitt'); 
roberts=edge(bi,'roberts'); 
sobel=edge(bi,'sobel');
zerocross=edge(bi,'zerocross');

imwrite(c,'Original.jpg');
imwrite(bi,'Binary.jpg');
imwrite(canny,'Canny Edge Detection.jpg');
imwrite(log,'Log Edge Detection.jpg');
imwrite(prewitt,'Prewitt Edge Detection.jpg');
imwrite(roberts,'Roberts Edge Detection.jpg');
imwrite(sobel,'Sobel Edge Detection.jpg');
imwrite(zerocross,'Zerocross Edge Detection.jpg');