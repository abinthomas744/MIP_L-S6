%dark,bright & good contrast images and their histograms

gs=imread('grayscale.jpg');

%Original Image
figure,
subplot(2,3,1)
imshow(gs);
subplot(2,3,4)
imhist(gs);
ylim([0 8000])

%Dark image
di=0.45*gs;
subplot(2,3,2)
imshow(di);
subplot(2,3,5)
imhist(di);
ylim([0 8000])

%Bright Image
bi=1.5*gs;
subplot(2,3,3)
imshow(bi);
subplot(2,3,6)
imhist(bi);
ylim([0 8000])
