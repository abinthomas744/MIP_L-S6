a=imread('C:\Users\Amritmay Biswas\Pictures\Original.jpg');
info=imfinfo('C:\Users\Amritmay Biswas\Pictures\Original.jpg');
B=info.BitDepth;
L=2^B;
s=L-a;
imshowpair(a,s);



m=double(a);
A=50*log(1+m);
figure,imshowpair(a,A)
