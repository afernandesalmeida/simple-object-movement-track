function [ position ] = simpleTracking( im1, im2, i )

clc; close all;

%% Converting to grayscale
if size(size(im1),2)==3
    im1=im2double(rgb2gray(im1));
end
if size(size(im2),2)==3
    im2=im2double(rgb2gray(im2));
end

%% Image difference

ret = imabsdiff(im2,im1);

%% Find corners
C = corner(ret,'Harris',2); %Magic happens here

x_mean = mean(C(:,1));
y_mean = mean(C(:,2));

position = [x_mean y_mean];

%% Tracking and centroid plot
h=figure;
imshow(ret);
hold on;
plot(x_mean,y_mean,'r*');
hold on;
plot(C(:,1), C(:,2), 'b*');

% Plot save
saveas(h,sprintf('../../dataOutput/fullReal/tracking/fullHorizontal/fullHorizontal%d.png',i));

end