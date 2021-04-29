%clear the work space and close all open figure windows
clear; close all; clc;
%declare the size of your pictures
hres = 256; vres = 256;
%define the picture name
name = ('lenna.256');
name = ['Y:\image_stills\', name];
%ask your demonstrator exactly what filename
%(including directory addressing) to use here
%open the file
fin = fopen(name, 'rb');
%read in the picture data
% note the transpose operation ()’ is used since the picture is stored
% in row scan order from top to bottom, but Matlab reads data into
% columns
pic = double(fread(fin,[256 256])');
%double() converts the image values to floating point
%double images for mathemtical use
% display the image in a figure window
figure(1);image(pic);colormap(gray(256));shg;
figure(2);histogram(pic(:),(0:255));shg;
%image(pic) actually shows the picture in figure(1)
%colormay gray(256) makes sure the 8 bit picture is
%displayed such that 0=black and 255=white
%shg makes the figure come to the top of your windows desktop,
% and hence shows it to you. Its short for "show graphics"
newpic1 = pic + 128;
figure(3);image(newpic1);colormap(gray(256));shg;
figure(4);histogram(newpic1(:),(0:255));shg;

newpic2 = pic - 128;
figure(5);image(newpic2);colormap(gray(256));shg;
figure(6);histogram(newpic2(:),(0:255));shg;