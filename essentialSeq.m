function A = essentialSeq(num)
% ESSENTIALSEQ produces a sequence of
% all essential sequences of length num;
% roughly speaking, the set of
% essential sequences does not contain sequences
% of smaller period and shifts of its elements

A = ff2n(num);% construct all binary sequences of length num
n = size(A,1);
k = size(A,2);
check0 = zeros(1,n);

% tag with check0=1 all aperiodic sequences
for j=1:n
    if (realPeriod(A(j,:)) == k)
        check0(j) = 1;
    end
end

% remove all periodic sequences
A(check0 == 0,:) = [];

m = 1;
while (size(A,1)-m > 0)
    n = size(A,1);
    k = size(A,2);
    check1 = zeros(1,n);
    for j = m+1:n
        for i = 1:(k-1)
            if (circshift(A(m,:),i) == A(j,:))
                check1(j) = 1;% tag shifts
                break;
            end
        end
    end
    A(check1 == 1,:) = [];% remove shifts
    m = m+1;
end
end