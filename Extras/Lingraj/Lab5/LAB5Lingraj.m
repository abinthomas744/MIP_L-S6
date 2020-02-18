%Histogram stretching and Equalization

i=imread('input_gs_lc.png');
%Original 
figure,
subplot(2,3,1);
imshow(i);
subplot(2,3,4);
imhist(i);
ylim([0 1200])
xlim([0 255])

%Histogram stretching
hs=imadjust(i);
subplot(2,3,2);
imshow(hs);
subplot(2,3,5);
imhist(hs);
ylim([0 1200])
xlim([0 255])

%Histogram equalization
heq=histeq(i);
subplot(2,3,3);
imshow(heq);
subplot(2,3,6);
imhist(heq);
ylim([0 1200])
xlim([0 255])




%Rest of the code is just to get the outputs in .png for printout
imwrite(i,'i.png');
hfig = figure ; bar(imhist(i));
xlim([0 255]);
ylim([0 1200]);
title('Original Histogram')
xlabel('Intensity Values');
ylabel('Number of Pixels');
saveas(hfig ,'oimghist.png');

imwrite(hs,'hs.png');
hfig = figure ; bar(imhist(hs));
xlim([0 255]);
ylim([0 1200]);
title('Stretched Histogram')
xlabel('Intensity Values');
ylabel('Number of Pixels');
saveas(hfig ,'hshist.png');

imwrite(heq,'heq.png');
hfig = figure ; bar(imhist(heq));
xlim([0 255]);
ylim([0 1200]);
title('Equalized Histogram')
xlabel('Intensity Values');
ylabel('Number of Pixels');
saveas(hfig ,'heqhist.png');