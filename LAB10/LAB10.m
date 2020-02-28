clc; clear all;
i=imread('cameraman.tif');

%% Adding Noise
Gaussian_Noise=imnoise(i,'gaussian',.2,.05);
SaltnPepper_Noise=imnoise(i,'salt & pepper',.1);
Speckle_Noise=imnoise(i,'speckle',.05);

fig1=figure;imshow(i);
fig2=figure;imshow(Gaussian_Noise,[]);
fig3=figure;imshow(SaltnPepper_Noise);
fig4=figure;imshow(Speckle_Noise);

%% Mean Filtering
%3x3
m1=1/9*ones(3,3);
g_filtered=conv2(i,m1);
snp_filtered=conv2(SaltnPepper_Noise,m1);
sp_filtered=conv2(Speckle_Noise,m1);

fig5=figure;imshow(g_filtered,[]);
fig6=figure;imshow(snp_filtered);
fig7=figure;imshow(sp_filtered);

%5x5
m2=1/25*ones(5,5);
g_filtered5=conv2(i,m2);
snp_filtered5=conv2(i,m2);
sp_filtered5=conv2(i,m2);

fig8=figure;imshow(g_filtered5,[]);
fig9=figure;imshow(snp_filtered5);
fig10=figure;imshow(sp_filtered5);

%% Median Filtering
