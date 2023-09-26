function A = fupoConcat(f,c,beta,x,n,m,k)
% FUPOCONCAT Summary of this function goes here
%   Detailed explanation goes here
% f -- function
% c -- discontinuity point
% x -- initial point for rotation number
% n -- number of iterations in rotation number
% m -- Farey level
% k -- length of concatenation pattern
A = [];
rotInt = rotationInterval(f,c,beta,x,n);

a = rotInt(1);
b = rotInt(2);

X = optimalFareyNghbs(m,a,b);
if (isempty(X))
    return
end    
[P0,Q0] = numden(sym(X(2)));
[P1,Q1] = numden(sym(X(3)));

p0 = double(P0);
q0 = double(Q0);
p1 = double(P1);
q1 = double(Q1);

condition1 = (gcd(p0,q0) == 1);
condition2 = (gcd(p1,q1) == 1);
condition3 = (q0 == q1);
condition4 = (p0 == 0);

if (~condition1 || ~condition2 || condition3 || condition4)
    return
end  

oldp0 = p0;
oldq0 = q0;
oldq1 = q1;

if (q0 > q1)
    p0 = q1-p1;
    q0 = q1;
    p1 = oldq0-oldp0;
    q1 = oldq0;
end    

A0 = rotationSequence(p0,q0);
A1 = rotationSequence(p1,q1);

if (oldq0 > oldq1)
    A0 = 1 - A0;
    A1 = 1 - A1;
end    

A = essentialConcat(k,A0,A1);
end