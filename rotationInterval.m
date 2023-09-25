function rotInt = rotationInterval(f,c,x,n)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
fdown = waterMap(f,c,f(0));
fup = waterMap(f,c,f(1));
a = rotationNumber(fdown,c,x,n);
b = rotationNumber(fup,c,x,n);
rotInt = [a b];
end