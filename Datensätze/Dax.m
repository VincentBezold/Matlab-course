% This script calculates the performance of the DAX from 1987

close all
clear all
clc 

%% importing of the data as well as manipulating of the data for easier calculation

data = readtable('DAXOpening.csv');
date = table2array(data(:,1));
yearDate = datetime(date,'ConvertFrom','datenum');
date = date-date(1)+1;
date = date/365;

%% actual calculations
DAXPoints = table2array(data(:,2)); % stock price

fun = @(x,date) x(1).*(x(2)).^(date); % function for fitting
x0 = [2000,1.05]; % initial values

x = lsqcurvefit(fun,x0,date,DAXPoints,[1 1],[5000 1.2]);

%% Plotting section
plot(yearDate, DAXPoints)
hold on
plot(yearDate, fun(x, date))
title('DAX')
xlabel('years')
ylabel('points')