clear all; close all; clc;

% image input
folder = '../../dataInput/frame/fullReal/fullHorizontal/';
findImages = dir([folder '/*.png']);
qtd=size(findImages,1)
X=zeros(qtd,1);
Y=zeros(qtd,1);
for i=2:qtd-1

    im1=imread(sprintf('%sfullHorizontal%d.png',folder,i));
    im2=imread(sprintf('%sfullHorizontal%d.png',folder,i+1));

    c=simpleTracking(im1,im2,i);
    
    X(i)=c(1);
    Y(i)=c(2);
    
end
