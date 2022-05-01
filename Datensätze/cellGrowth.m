% This script shows a fitting example of a cell growth (or any other
% duplication process) with 2^x
close all
clear all
clc 

%% import of data

data = readtable('cellGrowth.csv');
time = table2array(data(:,1));
counts = table2array(data(:,2)); % counted cells
%% actual calculations

fun = @(x,time) x(1).*(2).^(time/x(2)); % function for fitting
fun2 = @(x,time) x(1).*(x(2)).^(time); %alternative function, but needs some addional calculations for half time 
x0 = [1,1]; % initial values
x = lsqcurvefit(fun,x0,time,counts);
x2 = lsqcurvefit(fun2,x0,time,counts);

%% Plotting section
plot(time, counts)
hold on
plot(time, fun(x, time))
plot(time, fun2(x2, time))
title('cell growth')
xlabel('days')
ylabel('counts')