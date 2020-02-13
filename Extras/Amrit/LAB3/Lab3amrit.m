% Extracting R,G and B components from a RGB image
img = imread('lighthouse.png');

red = img(:,:,1);
green = img(:,:,2);
blue = img(:,:,3);
a = zeros(size(img, 1), size(img, 2));
just_red = cat(3, red, a, a);

just_green = cat(3, a, green, a);

just_blue = cat(3, a, a, blue);


figure,
subplot(3,2,1)
imshow(just_red);
subplot(3,2,3)
imshow(just_green);
subplot(3,2,5)
imshow(just_blue);
subplot(3,2,4)
imshow(img);

imwrite(img,'Original.jpg');
imwrite(just_red,'R.jpg');
imwrite(just_green,'G.jpg');
imwrite(just_blue,'B.jpg');