i=imread('grayscale.jpg');
info=imfinfo('grayscale.jpg');
w=info.Width;
h=info.Height;
b=info.BitDepth;
p=((2^b)-1);

for a=(0:1:h)
    for b=(0:1:w)
        for c=(0:1:p)
            if i(a,b)==c
            intensity(c)=intensity(c)+1;
            end
        end
    end
end