
%% The overall goal of this exercise is to determine the perperformance of the DAX from 1987
% There for we need to 
% 1. import the data
% 2. manipulate the data


close all
clear all
clc 

%% 
% importing of the data as well as manipulating of the data for easier calculation

%% 
% Task: importing of the data: DAXOpening.csv
data = readtable('DAXOpening.csv');
date = table2array(data(:,1));

%% 
% this functions turns the date into a dezimal number, which makes it
% possible fo have calculations on it. Feel free to look up the function
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