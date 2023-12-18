% SCRIPTBETATRANSFORM is a script which prints
% output of FUPOCONCAT function for a given
% BETATRANSFORMATION T with parameters beta and alpha

clear

%PARAMETERS OF BETA TRANSFORMATION
beta = 1.19;%1.3;%1.79;%1.19;%1.44; %1<beta<=2
alpha = 0.45;%0.15;%0.45; %alpha+beta<=2

%BETA TRANSFORMATION, DISCONTINUITY POINT, LENGTH OF INTERVAL
[T, c, intlen] = betaTransformation(alpha,beta); 

%INITIAL POINT OF ITERATIONS FOR ROTATION INTERVAL
x = 0.7; %c-0.1; 
%NUMBER OF ITERATION FOR ROTATION INTERVAL
n = 1000;

%DEPTHS OF FAREY TREE
m = 9;

%NUMBER OF PARTS OF CONCATENATION
k = 7;

%AUXILIARY PART OF SCRIPT (INFO ON FAREY NEIGHBOURS)
%THIS PART MAY BE COMMENTED
rotInt = rotationInterval(T,c,intlen,x,n);
a = rotInt(1);
b = rotInt(2);
X = optimalFareyNghbs(m,a,b);
disp(X)

%MAIN PART OF SCRIPT
A = fupoConcat(T,c,intlen,x,n,m,k);
printCells(A)  %PRINT OUTPUT IN COMMAND WINDOW
%printCellsToFile(A) %PRINT OUTPUT TO FILE



