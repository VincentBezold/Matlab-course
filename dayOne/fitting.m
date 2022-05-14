data = readtable('exampleData.csv'); % imports data as table
data = table2array(data); % data is turned numeric
xData = data(:,1);
yData = data(:,2);

fun = @(x, xdata) x(1).*(xdata - x(2)).^2 + x(3) %symbolic function
x = [1 2 3];
% plot(xData, fun(x,xData))

x0 = [-1 1 1]; %initial values
x = lsqcurvefit(fun,x0,xData,yData)

plot(data(:,1),data(:,2),'.')
hold on
plot(xData, fun(x,data(:,1)))