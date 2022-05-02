close all
clear all
clc
data = readtable('exampleData.csv'); % imports data as table
data = table2array(data); % data is turned numeric
x = data(:,1);
y = data(:,2);
plot(x,y)
% plot(data(:,1),data(:,2))
legend('parabula')