clear

%CONSTANTS
ap = 0.1;
d = 0.3;
beta = 0.3;

%MAIN PARAMETERS
y0 = -0.065; %0; %-0.043; %0.022; sth wrong with 0.022! (0.019 is OK)
mu = 1.6;

%AUXILIARY FUNCTIONS
F = @(x) mu*x.*(x-ap).*(1-x);   %inverse N-shape polynomial
H = @(x) (0).*(x <= 0 ) + (1).*( x > 0 );   %Heaviside's funcyion

%MAIN FUNCTION
g = @(x) x+F(x)-y0-beta.*H(x-d);   %NewCNV model 

c = d;
x = d+(F(d)-y0-beta)/2;

n = 1000;
m = 3;
k = 6;

rotInt = rotationInterval(g,c,x,n);

a = rotInt(1);
b = rotInt(2);

X = optimalFareyNghbs(m,a,b);
disp(X)

A = fupoConcat(g,c,x,n,m,k);

printCells(A)
%printCellsToFile(A)



