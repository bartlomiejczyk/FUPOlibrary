function [g, d, intlen] = nlcnvMap
% NLCNVMAP defines a CNV model map
% on interval [b,c], where b=g(d) and c=g(d)+beta,
% and discontinuity at d
% being an expanding Lorenz map

%MAIN PARAMETERS
%alpha = 0.05; beta = 0.1; a = 0.1; d = 0.367; mu = 1.6;
%alpha = 0; beta = 0.3; a = 0.1; d = 0.367; mu = 1.6;%mu = 1.1;mu = 1.2;mu = 1.4;mu = 1.8;mu = 1.9;mu = 2.6
%alpha = -0.2; beta = 0.45; a = 0.1; d = 0.367; mu = 1.6;
%alpha = -0.25; beta = 0.455; a = 0.1; d = 0.37;  mu = 1.6;
alpha = -0.05; a = 0.1;  beta = 0.455; mu = 1.6;
d = 0.37;% disontinuity point

%AUXILIARY FUNCTIONS
F = @(x) mu*x.*(x-a).*(1-x);   %inverse N-shape polynomial
H = @(x) (0).*(x < 0 ) + (1).*( x >= 0 );   %Heaviside's function

%MAIN FUNCTION
g = @(x) x+F(x)-alpha-beta.*H(x-d);   %nlCNV model map

%LENGTH OF INTERVAL
intlen = beta;
 
end