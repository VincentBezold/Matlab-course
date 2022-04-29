clear all
close all
clc
noise = rand(100,1);
x = 1:100;
eFunction = exp(x*0.05);
% eFunction = eFunction .*  awgn(100,1,0);
plot(eFunction)

