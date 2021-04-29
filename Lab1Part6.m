% Clear the work space and close all open figure windows
clear; 
close all; 
clc;

% Read in the picture name
name = ('nuclei.02.png');
name = ['Y:\image_stills\4s1\lab1\', name];

% Read in the picture data
pic = imread(name);

% Display the image in a figure window
figure(1);
image(pic);
colormap(gray(256));
shg;

% Display histogram of image in a figure window
figure(2);
histogram(pic(:),(0:255));
shg;

t1 = 56;
t2 = 255;

mask = (pic >= t1 & pic <= t2);
mask = 255 * mask;

% Display the image in a figure window
figure(3);
image(mask);
colormap(gray(256));
shg;

