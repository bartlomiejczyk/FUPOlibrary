clear

d = 1/2;

%FUNCTION
g = @(x) (x.^2+x+1/4).*(x < d ) + (-x.^2+3*x-5/4).*( x >= d );

c = 1/2;
x = 1/3;

n = 1000;
m = 5;
k = 6;

rotInt = rotationInterval(g,c,x,n);

a = rotInt(1);
b = rotInt(2);

X = optimalFareyNghbs(m,a,b);
disp(X)

A = fupoConcat(g,c,x,n,m,k);

printCells(A)
%printCellsToFile(A)



