%explore fspecial and imfilter functions on MATLAB

i=imread('gs_input.jpg');

h=fspecial('disk',5);
blurred=imfilter(i,h,'replicate');
s=i-blurred;
s=s*0.3;
deblurred=i+s;

fig1=figure;imshow(i);
title('Original');
fig2=figure;imshow(blurred);
title('Blurred');
fig3=figure;imshow(deblurred);
title('Deblurred');



saveas(fig1,'Original.jpg');
saveas(fig2,'Blurred.jpg');
saveas(fig3,'Deblurred.jpg');