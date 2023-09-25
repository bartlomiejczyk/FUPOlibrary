clear

%PARAMETERS
beta = 1.3;%1.79;%1.19;%1.44; %1<beta<=2
alpha = 0.15;%0.15;%0.45; %alpha+beta<=2

%DISCONTINUITY POINT
c = (1-alpha)/beta;

%INITIAL POINT OF ITERATIONS
x = 0.7; %d-0.1; 

%BETA TRANSFORMATION
T = @(x) (beta.*x+alpha).*(x < c) + (beta.*x+alpha-1).*(x >= c); 

n = 1000;
m = 5;
k = 7;

rotInt = rotationInterval(T,c,x,n);

a = rotInt(1);
b = rotInt(2);

X = optimalFareyNghbs(m,a,b);
disp(X)

A = fupoConcat(T,c,x,n,m,k);

printCells(A)
%printCellsToFile(A)



