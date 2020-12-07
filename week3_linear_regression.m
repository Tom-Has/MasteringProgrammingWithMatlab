function [k d] = lin_reg(p1, p2)
addon = ones(1, size(p1,2));
A = [p1', addon'];
b = p2';
x = A\b; k = x(1,1); d = x(2,1);
