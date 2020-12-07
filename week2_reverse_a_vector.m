function w = reversal(v)
if isscalar(v)
        w = v;
elseif size(v, 2) == 2
    w = [v(1,2) v(1,1)];
else
    a = v(1,1); b = v(1,end);
    w = [b, reversal(v(2 : end-1)), a];
end
