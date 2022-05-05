close all
clear all
clc

data = readtable('weirdPoly.csv'); % imports data as table
data = table2array(data); % data is turned numeric
xData = data(:,1);
yData = data(:,2);