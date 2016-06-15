j = imread('fuka.jpg');

I = rgb2gray(j);
[x,y] = size(I);
myImage = imnoise(I,'salt & pepper', 0.02);


%i couldn't figure out why the edge needed four points and the sides needed
%5 so i put 6 points to predict the sides.
i=2;
B=zeros(size(myImage));
while(i<(x))
    k=2;
    
    while (k <(y))
        
        window=zeros(9,1);
        inc = 1;
        for g=1:3
            for h=1:3
                window(inc)=myImage(i+g-2,k+h-2);
                inc=inc+1;
            end
        end
        med=sort(window);
        
        B(i,k)=med(5);
        k=k+1;
    end
    i=i+1;
end

%find for the outer edges...
i=1;
k=2;
while (k<y)
    window = zeros(6,1);
    inc=1;
    for g=1:2
        for h=1:3
            window(inc)=myImage(g,k+h-2);
            inc=inc+1;
        end
        
    end
    med=sort(window);
        
        B(i,k)=(med(3)+med(4))/2;
        k=k+1;
end

i=x;
k=2;
while(k<y)
    inc=1;
     window = zeros(6,1);
    for g=i-1:i
        for h=1:3
            window(inc)=myImage(g,k+h-2);
            inc=inc+1;
        end
        
    end
    med=sort(window);
        
        B(i,k)=(med(3)+med(4))/2;
    k=k+1;
end

k=1;
i=2;
while (i<x)
     window = zeros(6,1);
     inc=1;
    for g=1:3
        for h=1:2
            window(inc)=myImage(g+i-2,h);
            inc=inc+1;
        end
        
    end
    med=sort(window);
        
        B(i,k)=(med(3)+med(4))/2;
        i=i+1;
end

k=y;
i=2;

while (i<x)
    window = zeros(6,1);
    inc=1;
    for g=1:3
        for h=k-1:k
            window(inc)=myImage(g+i-2,h);
            inc=inc+1;
        end
        
    end
    med=sort(window);
        
        B(i,k)=(med(3)+med(4))/2;
        i=i+1;
end


%for the courners...
i=1;
k=1;
while (i==1)
    window = zeros(4,1);
    inc=1;
    for g=1:2
        for h=1:2
            window(inc)=myImage(g,h);
            inc=inc+1;
        end
        
    end
    med=sort(window);
        
        B(i,k)=(med(2)+med(3))/2;
        i=i+1;
    
    
end


i=1;
k=y;
while (i==1)
    inc=1;
    window = zeros(4,1);
    for g=1:2
        for h=k-1:k
            window(inc)=myImage(g,h);
            inc=inc+1;
        end
        
    end
    med=sort(window);
        
        B(i,k)=(med(2)+med(3))/2;
        i=i+1;
    
    
end


i=x;
k=1;
while (i==x)
     inc=1;
     window = zeros(4,1);
    for g=x-1:x
        for h=1:2
            window(inc)=myImage(g,h);
            inc=inc+1;
        end
        
    end
    med=sort(window);
        
        B(i,k)=(med(2)+med(3))/2;
        i=i+1;
    
    
end

i=x;
k=y;
while (i==x)
    inc=1;
    window = zeros(4,1);
    for g=x-1:x
        for h=y-1:y
            window(inc)=myImage(g,h);
            inc=inc+1;
        end
        
    end
    med=sort(window);
        
        B(i,k)=(med(2)+med(3))/2;
        i=i+1;
    
    
end

B=uint8(B);

figure(1)
subplot(1,3,1)
    imshow(I);
title('original image');
subplot(1,3,2)
    imshow(myImage);
title('IMAGE WITH SALT AND PEPPER NOISE');
subplot(1,3,3)
    imshow(B);
title('IMAGE AFTER MEDIAN FILTERING');