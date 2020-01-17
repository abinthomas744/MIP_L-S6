negative=imcomplement(c);
imshow(negative);
nbi=imcomplement(bi);
imshow(nbi);
imwrite(negative,'negative.jpg');
imwrite(nbi,'nbi.jpg');
