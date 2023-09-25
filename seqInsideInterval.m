function B = seqInsideInterval(A,a,b)
% SEQINSIDEINTERVAL Summary of this function goes here
% Detailed explanation goes here
B = [];
n = length(A);
for i = 1:n
    if (A(i) >= a && A(i) <= b)
        B = [B A(i)];
    end
end
end