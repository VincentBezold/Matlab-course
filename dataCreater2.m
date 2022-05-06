x = 1:100;
A = cos(2*pi*0.05*x+2*pi*rand) + 0.5*randn(1,100);
[B,window] = smoothdata(A,'gaussian');
% C = smoothdata(A,'gaussian',20);
C = smoothdata(A, 200);
plot(x,A,'-o',x,C,'-x')
legend('Small Window','Large Window')