A = [0 1];
B = [0 0 1];
n = 6;
X = essentialConcatenation(n,A,B);
max = size(X,2);
% for i = 1:max
%     fprintf('%i',X{i});
%     fprintf('\n');
% end  

fileID = fopen('plik2.txt','w');
for i = 1:max
    fprintf(fileID,'%i',X{i});
    fprintf(fileID,'\n');
end  
fclose(fileID);

% fileID = fopen('plik.txt','w');
% fprintf(fileID,'%i',snew);
% %fprintf('\n');
% fclose(fileID);
