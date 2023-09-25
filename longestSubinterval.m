function B = longestSubinterval(A)
% LONGESTSUBINTERVAL Summary of this function goes here
% Detailed explanation goes here
B = [];
n = length(A);
if (n <= 1)
    return
else
    a = A(1);
    b = A(2);
end    
for i = 3:n
    if (A(i)-A(i-1) > b-a)
        a = A(i-1);
        b = A(i);
    end
end
B = [b-a a b];
end