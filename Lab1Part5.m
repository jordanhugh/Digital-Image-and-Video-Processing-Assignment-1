% Clear the work space and close all open figure windows
clear; 
close all; 
clc;

% Read in the picture name
prompt = 'What is the filename?: '; %sigmedia06907.tif
name = input(prompt, 's');
name = ['Y:\image_stills\4s1\lab1\', name];

% Read in the picture data
pic = imread(name);
pic = rgb2gray(pic);

% Display the image in a figure window
figure(1);
image(pic);
colormap(gray(256));
shg;

% Display histogram of image in a figure window
figure(2);
histogram(pic(:),(0:255));
shg;

