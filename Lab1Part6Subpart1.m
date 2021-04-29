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

% Find red segment of table
red_t1 = 50;
red_t2 = 100;

red_mask = (red_channel >= red_t1 & red_channel <= red_t2);
red_mask = cast(red_mask, 'like', red_channel);
red_channel = red_mask.*red_channel;

% Find green segment of table
green_t1 = 110;
green_t2 = 185;

green_mask = (green_channel >= green_t1 & green_channel <= green_t2);
green_mask = cast(green_mask, 'like', green_channel);
green_channel = green_mask.*green_channel;

% Find blue segment of table
blue_t1 = 33;
blue_t2 = 72;

blue_mask = (blue_channel >= blue_t1 & blue_channel <= blue_t2);
blue_mask = cast(blue_mask, 'like', blue_channel);
blue_channel = blue_mask.*blue_channel;

% Concatenate channels
table = cat(3, red_channel, green_channel, blue_channel);

% Display table in a figure window
figure(1);
image(table);
colormap(gray(256));
shg;

% Concatenate each channel alone
red_pic = cat(3, red_channel, a, a);
green_pic = cat(3, a, green_channel, a);
blue_pic = cat(3, a, a, blue_channel);

% Display red segment of table in a figure window
figure(2);
image(red_pic);
colormap(gray(256));
shg;

% Display green segment of table in a figure window
figure(3);
image(green_pic);
colormap(gray(256));
shg;

% Display blue segment of table in a figure window
figure(4);
image(blue_pic);
colormap(gray(256));
shg;