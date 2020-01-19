negative=imcomplement(c);
imshow(negative);
nbi=imcomplement(bi);
imshow(nbi);
imwrite(negative,'negative.jpg');
imwrite(nbi,'nbi.jpg');

montage('1.negative.jpg''2.nbi.jpg''Binary.jpg''Canny Edge Detection.jpg''Log Edge Detection.jpg''Prewitt Edge Detection.jpg''Roberts Edge Detection.jpg''Sobel Edge Detection.jpg''Zerocross Edge Detection.jpg');