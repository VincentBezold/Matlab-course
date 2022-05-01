A = readtable('DAX.csv');
A(any(isnan(stockPrice), 2), :) = [];
date = table2array(A(:,1));
date = datenum(date,'yyyy/mm/dd');
% date = datetime(date,'ConvertFrom','datenum');
text = table2array(A(:,2));
plot(date, text)
M = [date text];
% csvwrite('DAXOpening.csv',M,'precision', 5)
dlmwrite('DAXOpening.csv',M, 'delimiter', ',', 'precision', '%i')