function printCells(A)
% PRINTCELLS Summary of this function goes here
%   Detailed explanation goes here
max = size(A,2);
for i = 1:max
    fprintf('%i',A{i});
    fprintf('\n');
end  
end