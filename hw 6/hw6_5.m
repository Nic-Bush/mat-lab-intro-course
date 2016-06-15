%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% UC Merced, Math 24
% 
% This MATLAB script will take in a digital image and perform seperation of
% colors

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

r = 40; %number of desired, principal components (1 < r < n)
clf
tic

% Load image
myPic = imread('fuka.jpg'); %JPG, GIF, PNG, etc. file
figure(1)
    image(myPic), axis image
    title('Original picture')



p = myPic; %color red
p( :, :, 2) = 0;
p( :, :, 3) = 0;
q = myPic;
q( :, :, 1) = 0;
q( :, :, 3) = 0;
r = myPic;
r( :, :, 1) = 0;
r( :, :, 2) = 0;
% Compare results
figure(2)
subplot(2,2,1)
    imagesc(myPic), axis image, title('Original picture')
subplot(2,2,2)
    imagesc(p), axis image, title('red image')
subplot(2,2,3)
    imagesc(q), axis image, title('green image')
subplot(2,2,4)
    imagesc(r), axis image, title('blue image')


toc