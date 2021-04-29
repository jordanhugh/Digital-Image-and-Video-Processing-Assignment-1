% Clear the work space and close all open figure windows
clear; 
close all; 
clc;

% Read in the picture name
name = ('pool.01.bmp');
name = ['Y:\image_stills\4s1\lab1\', name];

% Read in the picture data
pic = imread(name);

[vres, hres] = size(pic);
a = zeros(vres, hres/3);

red_channel = pic(:, :, 1);
green_channel = pic(:, :, 2);
blue_channel = pic(:, :, 3);

red_pic = cat(3, red_channel, a, a);
green_pic = cat(3, a, green_channel, a);
blue_pic = cat(3, a, a, blue_channel);

% Display original image in a figure window
figure(1);
image(pic);
colormap(gray(256));
shg;

% Display red channel in a figure window
figure(2);
image(red_pic);
colormap(gray(256));
shg;

% Display histogram for red channel in a figure window
figure(3);
histogram(red_channel,(0:255));
shg;

% Display green channel in a figure window
figure(4);
image(green_pic);
colormap(gray(256));
shg;

% Display histogram for green channel in a figure window
figure(5);
histogram(green_channel,(0:255));
shg;

% Display blue channel in a figure window
figure(6);
image(blue_pic);
colormap(gray(256));
shg;

% Display histogram for blue channel in a figure window
figure(7);
histogram(blue_channel,(0:255));
shg;