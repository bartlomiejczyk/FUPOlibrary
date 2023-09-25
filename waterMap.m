function g = waterMap(f,c,t)
% WATERMAP Summary of this function goes here
%   Detailed explanation goes here

g = @(x) max(t, f(x)).*(x < c) + ...
    min(t, f(x)).*(c <= x);
end