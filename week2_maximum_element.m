function x = recursive_max(v)
if isscalar(v) 
    x = v;
else
    if v(1,1) > recursive_max(v(2:end))
        x = v(1,1);
    else
        x = recursive_max(v(2:end));
    end
end
