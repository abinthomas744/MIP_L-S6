%dark,bright & good contrast images and their histograms
gs=imread('input_grayscale.jpg');

%Original Image
figure,
subplot(2,3,1)
imshow(gs);
subplot(2,3,4)
imhist(gs);
ylim([0 1000])
xlim([0 255]);

%Dark image
di=0.35*gs;
subplot(2,3,2)
imshow(di);
subplot(2,3,5)
imhist(di);
ylim([0 1000])
xlim([0 255]);

%Bright Image
bi=2.5*gs;
subplot(2,3,3)
imshow(bi);
subplot(2,3,6)
imhist(bi);
ylim([0 1000])
xlim([0 255]);



%Rest of the code is just to get the outputs in .png for printout
imwrite(gs,'Good Contrast Image.png');
hfig = figure ; bar(imhist(gs));
xlim([0 255]);
ylim([0 1000]);
title('Good Contrast Image')
xlabel('Intensity Values');
ylabel('Number of Pixels');
saveas(hfig ,'goodcontrastimghist.png');

imwrite(di,'Dark Image.png');
hfig = figure ; bar(imhist(di)); 
xlim([0 255]);
ylim([0 1000]);
title('Dark Image')
xlabel('Intensity Values');
ylabel('Number of Pixels');
saveas(hfig ,'Darkimghist.png');

imwrite(bi,'Bright Image.png');
hfig = figure ; bar(imhist(bi));
xlim([0 255]);
ylim([0 1000]);
title('Bright Image')
xlabel('Intensity Values');
ylabel('Number of Pixels');
saveas(hfig ,'Brightimghist.png');