%Explore some basic commands of image processing in MATLAB

a=imread('C:\Users\abint\Documents\GitHub\MIPLAB6thSem\Original.jpg');
imshow(a);

imwrite(a,'a.jpg');

rgbgray=rgb2gray(a);
imwrite(rgbgray,'rgbgray.jpg');

rbgind=rgb2ind(a,64);
imwrite(a,'rgbind.jpg');

[grayind64 map64]=gray2ind(rgbgray,64);
imwrite(grayind64,map64,'grayind64.jpg');


imbw=im2bw(a);
imwrite(imbw,'imbw.jpg');

indgray=ind2gray(grayind64,map64);
imwrite(indgray,'indgray.jpg');

crop=imcrop(rgbgray,[129 194 60 70]);
imwrite(crop,'crop.jpg');

imtool(rgbgray);

info = imfinfo('Original.jpg');
imageinfo(info);

resizeda=imresize(rgbgray,.25);
imwrite(resizeda,'resized1_4.jpg');

resizedb=imresize(rgbgray,4);
imwrite(resizedb,'resized4.jpg');

edges=edge(imbw,'canny');
imwrite(edges,'cannyedge.jpg');
