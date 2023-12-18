% SCRIPTQUADRLORENZ is a script which prints
% output of FUPOCONCAT function for a given
% quadratic Lorenz-like map

clear

% QUADRATIC LORENZ-LIKE MAP, DISCONTINUITY POINT, LENGTH OF INTERVAL
[g, c, intlen] = quadrLorenzMap; 

% INITIAL POINT OF ITERATIONS FOR ROTATION INTERVAL
z = 1/3; %c-0.1; 
% NUMBER OF ITERATION FOR ROTATION INTERVAL
n = 1000;

% DEPTHS OF FAREY TREE
m = 5;

% NUMBER OF PARTS OF CONCATENATION
k = 6;

% AUXILIARY PART OF SCRIPT (INFO ON FAREY NEIGHBOURS)
% THIS PART MAY BE COMMENTED
rotInt = rotationInterval(g,c,intlen,z,n);
a = rotInt(1);
b = rotInt(2);
X = optimalFareyNghbs(m,a,b);
disp(X)

%MAIN PART OF SCRIPT
A = fupoConcat(g,c,intlen,z,n,m,k);
printCells(A)  %PRINT OUTPUT IN COMMAND WINDOW
%printCellsToFile(A) %PRINT OUTPUT TO FILE




