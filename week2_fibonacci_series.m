function f = fibor(n,f)
if nargin == 1 
    f = fibor(n-1,[1,1]);
elseif n == 0
    f = 1;
elseif n > 1
    f = fibor(n-1, [f, f(end-1)+f(end)]);
end
