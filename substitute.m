function T = substitute(S,A,B)
% SUBSTITUTE is a function that
% substitutes 0 with sequence A and
% 1 with sequence B in pattern sequence S

T = [];
n = length(S);
for i = 1:n
    if S(i) == 0
        T = [T A];
    else
        T = [T B];
    end
end