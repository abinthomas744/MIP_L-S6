%Histogram stretching and Equalization

i=imread('grayscale.jpg');
%Original 
figure,
subplot(2,3,1);
imshow(i);
subplot(2,3,4);
imhist(i);
ylim([0 3000])

%Histogram stretching
hs=imadjust(i);
subplot(2,3,2);
imshow(hs);
subplot(2,3,5);
imhist(hs);
ylim([0 3000])

%Histogram equalization
heq=histeq(i);
subplot(2,3,3);
imshow(heq);
subplot(2,3,6);
imhist(heq);
ylim([0 3000])

