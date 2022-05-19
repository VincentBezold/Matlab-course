close all
clear all
clc

x = -10:0.05:10;

y = exp(x/10);
yy = 10 * 2.^(x/7);
yyy = -1*(x-4).^2 + 5;
yyNoise = wgn(length(yy),1,-6);
% yyyy = sin(x*3)./x;
yyyy = 1.5*sin(x);
% yyyy = -x.^5 + 5* x.^3 - 4*x
yyyy = yyyy + yyNoise';
yyyy(132) = yyyy(132) + 4.5;
yyyy(242) = yyyy(242) - 5.25;
% yy = round(yy);
M = [x; yyyy];
plot(x,yyyy,'.')
hold on
plot(x,movmean(yyyy, 10))
% disp(1)
csvwrite('sinNoisy.csv',M')