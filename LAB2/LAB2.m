
%Some basic intensity transformation methods
a=imread('grayscale_input.jpg');
fig7=figure; imshow(a)
title('Original');



%Negative
info=imfinfo('grayscale_input.jpg');
B=info.BitDepth;
L=2^B;
s=L-a;

fig8=figure;imshow(s);
title('Negative');

fig1=figure; plot(a,s);
title('Negative');
xlabel('Input');
ylabel('Output');
ylim([0 255])
xlim([0 255]);



%Log Transform
m=double(a);
A=.05*log(1+m);
fig9=figure; imshow(A);
title('Log Transform');

fig2=figure; plot(a,A);
title('Log Transform');
xlabel('Input');
ylabel('Output');
xlim([0 255]);



%Power Law Transform
Y=2;
X=0.40*a.^Y;
fig3=figure; imshow(X,[]);
title('Power Log Transform')

fig4=figure; plot(a,X);
title('Power Log Transform');
xlabel('Input');
ylabel('Output');
xlim([0 255]);



%Contrast Stretching
M=150;
E=20;
S3=1./(1+ (M./double(a) + eps)).^E;
fig5=figure;imshow(S3,[]);
title('Contrast Stretching');

fig6=figure; plot(a,S3);
title('Contrast Stretching');
xlabel('Input');
ylabel('Output');
xlim([0 255]);



saveas(fig9,'Log_Transform.jpg');
saveas(fig8,'Negative.jpg');
saveas(fig7,'Original.jpg');
saveas(fig1,'Negplot.jpg');
saveas(fig2,'Logplot.jpg');
saveas(fig3,'PowerLog.jpg');
saveas(fig4,'Powplot.jpg');
saveas(fig5,'ConStretch.jpg');
saveas(fig6,'ConStreplot.jpg');