function p = realPeriod(x)
l = length(x);
sp = seqperiod(x);
if rem(l,sp) == 0
    p = sp;
else
    p = l;
end
end
