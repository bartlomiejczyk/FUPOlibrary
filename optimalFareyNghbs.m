function C = optimalFareyNghbs(n,a,b)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
for i = 1:n
    A = fareySequence(i);
    B = seqInsideInterval(A,a,b);
    C = longestSubinterval(B);
    if (~isempty(C))
        return
    end
end