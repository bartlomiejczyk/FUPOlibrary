function rotInt = rotationInterval(f,d,intlen,x,n)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
b = f(d);
c = f(d)+intlen;
fdown = waterMap(f,d,f(b));
fup = waterMap(f,d,f(c));
down = rotationNumber(fdown,d,x,n);
up = rotationNumber(fup,d,x,n);
rotInt = [down up];
end