close all
clear all
clc

x = 0:0.01:10;

y = exp(x/10);
yy = 4 * 2.^(x/7);
yyy = -1*(x-4).^2 + 5;
yyNoise = wgn(length(yy),1,0);

yy = yy + yyNoise';
M = [x; yyy]
plot(x,yyy,'.')
disp(1)
csvwrite('exampleData.csv',M')