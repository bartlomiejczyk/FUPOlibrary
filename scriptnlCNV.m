% SCRIPTNLCNV is a script which prints
% output of FUPOCONCAT function for a given
% nlCNV model map 

clear

%MAIN PARAMETERS
%alpha = 0.05; beta = 0.1; a = 0.1; d = 0.367; mu = 1.6;
%alpha = 0; beta = 0.3; a = 0.1; d = 0.367; mu = 1.6;%mu = 1.1;mu = 1.2;mu = 1.4;mu = 1.8;mu = 1.9;mu = 2.6
%alpha = -0.2; beta = 0.45; a = 0.1; d = 0.367; mu = 1.6;
%alpha = -0.25; beta = 0.455; a = 0.1; d = 0.37;  mu = 1.6;
mu = 1.6; a = 0.1; d = 0.37; alpha = -0.05;  beta = 0.455; 

% NLCNV MODEL MAP, DISCONTINUITY POINT, LENGTH OF INTERVAL
[g, d, intlen] = nlcnvMap(mu,a,d,alpha,beta);

% INITIAL POINT OF ITERATIONS FOR ROTATION INTERVAL
b = g(d);
c = g(d)+intlen;
x = (2*b+c)/3;

% NUMBER OF ITERATION FOR ROTATION INTERVAL
n = 1000;

% DEPTHS OF FAREY TREE
m = 8;

% NUMBER OF PARTS OF CONCATENATION
k = 3;

% AUXILIARY PART OF SCRIPT (INFO ON FAREY NEIGHBOURS)
% THIS PART MAY BE COMMENTED
rotInt = rotationInterval(g,d,intlen,x,n);
disp(['rotation interval is: [' num2str(rotInt(:).') ']']) 
start = rotInt(1);
finish = rotInt(2);
X = optimalFareyNghbs(m,start,finish);
disp('distance between farey neighours and farey neighours are:') 
disp(X)

% MAIN PART OF SCRIPT
A = fupoConcat(g,d,intlen,x,n,m,k);
disp(['concatenations made of ', num2str(k), ' basic sequences:'])
printCells(A) %PRINT OUTPUT IN COMMAND WINDOW
%printCellsToFile(A) %PRINT OUTPUT TO FILE



