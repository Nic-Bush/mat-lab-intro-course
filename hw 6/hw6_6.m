%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% UC Merced, Math 24
%
% This MATLAB script will take in a digital image and perform compression
% (via principal component analysis)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

r = 40; %number of desired, principal components (1 < r < n)
clf
tic

% Load image
myPic = imread('fuka.jpg'); %JPG, GIF, PNG, etc. file
figure(1)
image(myPic), axis image
title('Original picture')
X = double(rgb2gray(myPic)); %convert to grayscale matrix
Y = double(rgb2gray(myPic));
% Intermediate calculations
[m, n] = size(X);
v = 1;
while (v<n)
    b=1;
    while (b<m)
        X(b, v) = 255 - X(b, v);
        b = b+1;
        
    end
    v=v+1;
    
    
end



% Compare results
figure(3)
subplot(3,1,1)
imagesc(myPic), axis image, title('Original picture')
subplot(3,1,2)
imagesc(Y), axis image, colormap(gray), title('Grayscale picture orig')
subplot(3,1,3)
imagesc(X), axis image, colormap(gray), title('Grayscale picture reverse')
toc