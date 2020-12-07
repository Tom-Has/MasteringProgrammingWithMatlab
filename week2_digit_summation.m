function x = digit_sum(input)
if input < 10
    x = input;
else
    inter = mod(input, 10);
    x = inter + digit_sum((input - inter) / 10);
end
