function mix = mixit(tracks, weigth)
    inter = -1 + 2 * double(tracks) ./ double(intmax('uint16'));
    mix = inter * weigth';
    test = max(abs(mix));
    if test > 1
        mix = mix / test;
    end
end
