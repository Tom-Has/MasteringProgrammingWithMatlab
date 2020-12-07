function [f trace] = fibo_trace(n, v)
trace = [v n];
if n <= 2
    f = 1;
else
    [a trace] = fibo_trace(n - 2, trace);
    [b trace] = fibo_trace(n - 1, trace);
    f = a + b;
end
end

% credits to Mo Ib for this solution, check his/her channel at
% https://www.youtube.com/channel/UCpQZsWBUFkxXNbzB5sqmlFw
