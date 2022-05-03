close all
clear all
clc

x = -2.5:0.05:2.5;

y = exp(x/10);
yy = 10 * 2.^(x/7);
yyy = -1*(x-4).^2 + 5;
yyNoise = wgn(length(yy),1,4);
yyyy = sin(x*3)./x;
yyyy = sin(x*2) + 2;
yyyy = -x.^5 + 5* x.^3 - 4*x
% yyyy = yyyy + 3 * yyNoise';
% yy = round(yy);
M = [x; yyyy]
plot(x,yyyy,'.')
disp(1)
% csvwrite('weierdPoly.csv',M')