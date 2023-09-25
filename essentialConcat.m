function C = essentialConcat(n,A,B)
% ESSENTIALCONCATENATION produces cell array
% which contains all concatenation of base
% sequences A and B structured according to 
% the essential patterns of length n

P = essentialSeq(n);
m = size(P,1);
C = cell(1,m);

for j = 1:m
    C{j} = substitute(P(j,:),A,B);
end    
end