function rot = rotationNumber(f,c,x,n)
% ROTATIONNUMBER Summary of this function goes here
%   Detailed explanation goes here
k = 0;
z = x;
for i = 1:n
    if c <= z
        k = k+1;
    end
    z = f(z);
end
rot = k/n;
end