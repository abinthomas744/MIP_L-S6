%graylevel slicing without preserving the background

y=imread('input_grayscale.jpg');
a=input('Enter the lower limit for graylevel slicing');
b=input('Enter the upper limit for graylevel slicing');

[m,n]= size(y);
for i=1:m
    for j=1:n
            if (y(i,j)>=a && y(i,j)<=b);
                z(i,j)=max(max(y));

            else
                z(i,j)=0;
            end
    end
end

fig1=figure;imshow(y,[]);
title('Original');
fig2=figure;imshow(z,[]);
title('Grayscale Sliced without preserving background');
xlabel(['Lower limit = ',num2str(a),' ,  Upper limit= ',num2str(b)]);


saveas(fig1,'Original.jpg');
saveas(fig2,'Gs_upb.jpg');
