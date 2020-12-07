function fh = poly_fun(coeff)
exp = 0 : (size(coeff,2) -1);

function polynomial = poly(x)
terms = coeff(1:end) .* x.^exp(1:end);
polynomial = sum(terms);
end

fh = @poly;
end
