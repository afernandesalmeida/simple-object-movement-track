function [ position ] = simpleTracking( im1, im2, i )

clc; close all;

%% Converting to grayscale
if size(size(im1),2)==3
    im1=im2double(rgb2gray(im1));
end
if size(size(im2),2)==3
    im2=im2double(rgb2gray(im2));
end