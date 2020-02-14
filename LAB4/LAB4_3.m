i=imread('grayscale.jpg');
info=imfinfo('grayscale.jpg');
w=info.Width;
h=info.Height;

p=255;

for a=0:w
    for b=0:h
        for c=0:p
            if i(a,b)==p
            intensity(p)=intensity(p)+1;
            end
        end
    end
 end