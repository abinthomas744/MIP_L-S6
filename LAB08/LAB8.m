%ROI selection and Sharpening it 

i=imread('grayscale_input.jpg');


b=roipoly(i);

fig1=figure;imshow(i);
title('Original');

fig2=figure;imshow(b);
title('ROI Mask');

H=fspecial('average',10);
J=roifilt2(H,i,b);

fig3=figure;imshow(J);
title('ROI Sharpened');

saveas(fig1,'Original.jpg');
saveas(fig2,'ROI.jpg');
saveas(fig3,'roiSharpened.jpg');