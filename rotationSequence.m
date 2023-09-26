function A = rotationSequence(p,q)
A = zeros(1,q);
if ( p/q == 0 )
    disp('rotation number = 0')
    A = 0;
elseif ( p/q == 1 )
    disp('rotation number = 1')
    A = 1;
elseif ( p < q ) && ( gcd(p,q) == 1 )
    for i=1:q
        if ( rem((i-1)*p,q) < q-p )
            A(i) = 0;
        else
            A(i) = 1;
        end
    end   
else    
    A = [];
end
end

