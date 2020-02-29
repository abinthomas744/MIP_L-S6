i=imread('gs_input.jpg');
h=fspecial('disk',3);
blurred=imfilter(i,h,'replicate');
s=i-blurred;
s=s*0.3;
deblurred=i+s;

fig1=figure;imshow(i);
fig2=figure;imshow(blurred);
fig3=figure;imshow(s);