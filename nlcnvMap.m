function [g, d, intlen] = nlcnvMap(mu,a,d,alpha,beta)
% NLCNVMAP defines a nlCNV model map
% on interval [b,c], where b=g(d) and c=g(d)+beta,
% and discontinuity at d
% being an expanding Lorenz map;
% mu,a,d,alpha,beta are parameters of the model

%AUXILIARY FUNCTIONS
F = @(x) mu*x.*(x-a).*(1-x);   %inverse N-shape polynomial
H = @(x) (0).*(x < 0 ) + (1).*( x >= 0 );   %Heaviside's function

%MAIN FUNCTION
g = @(x) x+F(x)-alpha-beta.*H(x-d);   %nlCNV model map

%LENGTH OF INTERVAL
intlen = beta;
 
end