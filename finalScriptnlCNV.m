clear

%MAIN PARAMETERS
%alpha = 0.05; beta = 0.1; a = 0.1; d = 0.367; mu = 1.6;
alpha = 0; beta = 0.3; a = 0.1; d = 0.367; mu = 1.6;
%alpha = -0.2; beta = 0.45; a = 0.1; d = 0.367; mu = 1.6;
%alpha = -0.25; beta = 0.455; a = 0.1; d = 0.37;  mu = 1.6;
%alpha = -0.05; a = 0.1; d = 0.37; beta = 0.455; mu = 1.6;

%AUXILIARY FUNCTIONS
F = @(x) mu*x.*(x-a).*(1-x);   %inverse N-shape polynomial
H = @(x) (0).*(x <= 0 ) + (1).*( x > 0 );   %Heaviside's function

%MAIN FUNCTION
g = @(x) x+F(x)-alpha-beta.*H(x-d);   %nlCNV model 

b = g(d)-beta;
x = b+0.0015;

n = 1000;
m = 10;
k = 3;

rotInt = rotationInterval(g,d,beta,x,n);
disp(['rotation interval is: [' num2str(rotInt(:).') ']']) 

start = rotInt(1);
finish = rotInt(2);

X = optimalFareyNghbs(m,start,finish);
disp('ditance between farey neighours and farey neighours are:') 
disp(X)

A = fupoConcat(g,d,beta,x,n,m,k);

printCells(A)
%printCellsToFile(A)



