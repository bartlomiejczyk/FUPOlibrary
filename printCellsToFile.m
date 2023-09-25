function printCellsToFile(A)
% PRINTCELLSTOFILE Summary of this function goes here
%   Detailed explanation goes here
max = size(A,2);
fileID = fopen('data.txt','w');
for i = 1:max
    fprintf(fileID,'%i',A{i});
    fprintf(fileID,'\n');
end  
end