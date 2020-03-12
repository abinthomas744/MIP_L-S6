%Explore spatial domain filtering

i=imread('gs_input.jpg');

%% Adding Noise
Gaussian_Noise    = imnoise(i,'gaussian',.2,.05);
SaltnPepper_Noise = imnoise(i,'salt & pepper',.1);
Speckle_Noise     = imnoise(i,'speckle',.05);

%psnr
g_psnr   = psnr(Gaussian_Noise,i);
snp_psnr = psnr(SaltnPepper_Noise,i);
sp_psnr  = psnr(Speckle_Noise,i);

fig1=figure;imshow(i);
title('Original');
fig2=figure;imshow(Gaussian_Noise);
title(['Gaussian Noise,   PSNR=',num2str(g_psnr)]);
fig3=figure;imshow(SaltnPepper_Noise);
title(['Salt and Pepper Noise,   PSNR=',num2str(snp_psnr)]);
fig4=figure;imshow(Speckle_Noise);
title(['Speckle Noise,   PSNR=',num2str(sp_psnr)]);



%% Mean Filtering
%3x3
m1=1/9*ones(3,3);
g_filtered3   = uint8(conv2(Gaussian_Noise,m1,'same'));
snp_filtered3 = uint8(conv2(SaltnPepper_Noise,m1,'same'));
sp_filtered3  = uint8(conv2(Speckle_Noise,m1,'same'));

%psnr
gfilt3_psnr   = psnr(g_filtered3,i);
snpfilt3_psnr = psnr(snp_filtered3,i);
spfilt3_psnr  = psnr(sp_filtered3,i);

fig5=figure;imshow(g_filtered3,[]);
title(['3*3 Mean filter on Gaussian Noise,   PSNR=',num2str(gfilt3_psnr)]);
fig6=figure;imshow(snp_filtered3,[]);
title(['3*3 Mean filter on Salt and Pepper Noise,   PSNR=',num2str(snpfilt3_psnr)]);
fig7=figure;imshow(sp_filtered3,[]);
title(['3*3 Mean filter on Speckle Noise,   PSNR=',num2str(spfilt3_psnr)]);


%5x5
m2=1/25*ones(5,5);
g_filtered5   = uint8(conv2(Gaussian_Noise,m2,'same'));
snp_filtered5 = uint8(conv2(SaltnPepper_Noise,m2,'same'));
sp_filtered5  = uint8(conv2(Speckle_Noise,m2,'same'));

%psnr
gfilt5_psnr   = psnr(g_filtered5,i);
snpfilt5_psnr = psnr(snp_filtered5,i);
spfilt5_psnr  = psnr(sp_filtered5,i);

fig8=figure;imshow(g_filtered5,[]);
title(['5*5 Mean filter on Gaussian Noise,   PSNR=',num2str(gfilt5_psnr)]);
fig9=figure;imshow(snp_filtered5,[]);
title(['5*5 Mean filter on Salt and Pepper Noise,   PSNR=',num2str(snpfilt5_psnr)]);
fig10=figure;imshow(sp_filtered5,[]);
title(['5*5 Mean filter on Speckle Noise,   PSNR=',num2str(spfilt5_psnr)]);

%% Median Filtering

gmedfilt   = medfilt2(Gaussian_Noise);
snpmedfilt = medfilt2(SaltnPepper_Noise);
spmedfilt  = medfilt2(Speckle_Noise);

%psnr
gmed_psnr   = psnr(gmedfilt,i);
snpmed_psnr = psnr(snpmedfilt,i);
spmed_psnr  = psnr(spmedfilt,i);

fig11=figure;imshow(gmedfilt,[]);
title(['Median filter on Gaussian Noise,   PSNR=',num2str(gmed_psnr)]);
fig12=figure;imshow(snpmedfilt,[]);
title(['Median filter on Salt and Pepper Noise,   PSNR=',num2str(snpmed_psnr)]);
fig13=figure;imshow(spmedfilt,[]);
title(['Median filter on Speckle Noise,   PSNR=',num2str(spmed_psnr)]);



%Rest is just to get output for printout

saveas(fig1,'Original.jpg');
saveas(fig2,'Gaussian-Noise.jpg');
saveas(fig3,'SaltnPepper-Noise.jpg');
saveas(fig4,'Speckle-Noise.jpg');
saveas(fig5,'Mean3x3Gaussian.jpg');
saveas(fig6,'Mean3x3SaltnPepper.jpg');
saveas(fig7,'Mean3x3Speckle.jpg');
saveas(fig8,'Mean5x5Gaussian.jpg');
saveas(fig9,'Mean5x5SaltnPepper.jpg');
saveas(fig10,'Mean5x5Speckle.jpg');
saveas(fig11,'MedfiltGaussian.jpg');
saveas(fig12,'MedfiltSaltnPepper.jpg');
saveas(fig13,'MedfiltSpeckle.jpg');