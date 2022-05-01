close all
clear all
clc

x = 0:0.1:30;

y = exp(x/10);
yy = 4 * 2.^(x/7);
yyNoise = wgn(length(yy),1,0);
yy = yy + yyNoise';
M = [x; yy]
plot(x,yy,'.')
disp(1)
% csvwrite('cellGrowth.csv',M')