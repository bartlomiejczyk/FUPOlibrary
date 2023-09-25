function A = fareySequence(n)
% FAREYSEQUENCE Summary of this function goes here
% Detailed explanation goes here
A = 0;
a = 0; b = 1; c = 1; d = n;
while (c <= n) 
      k = fix((n+b)/d);
      aa = c; bb = d; cc = k*c-a; dd = k*d-b;
      a = aa; b = bb; c = cc; d = dd;
      format rational
      A = [A a/b];
end
end