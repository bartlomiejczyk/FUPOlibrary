function [g, c, intlen] = quadrLorenzMap
% QUADRATICLORENZMAP defines a Lorenz-like map
% on interval [0,1] with two quadratic branches
% and discontinuity at 1/2

%DISCONTINUITY POINT
c = 1/2;

%LENGTH OF INTERVAL
intlen = 1;
 
%BETA TRANSFORMATION
g = @(x) (x.^2+x+1/4).*( x < c ) + (-x.^2+3*x-5/4).*( x >= c ); 

end