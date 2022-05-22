close all
clear all
clc
data = readtable('exampleData.csv'); % imports data as table
data = table2array(data); % data is turned numeric
x = data(:,1);
y = data(:,2);
plot(x,y)
legend('parabula')
xlabel('x-axis')
ylabel('y-axis')