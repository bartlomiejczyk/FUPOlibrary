function [T, c, intlen] = betaTransformation(alpha,beta)
% BETATRANSFORMATION defines a beta-transformation, i.e.,
% a map of the form T(x) = beta*x+alpha mod 1
% defined on interval [0,1] where beta and alpha are parameters
% such that 1<beta<=2 and alpha+beta<=2 

%DISCONTINUITY POINT
c = (1-alpha)/beta;

%LENGTH OF INTERVAL
intlen = 1;
 
%BETA TRANSFORMATION
T = @(x) (beta.*x+alpha).*(x < c) + (beta.*x+alpha-1).*(x >= c); 

end