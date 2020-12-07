function v = reversal(u)

if length(u) == 1
    v = u;
elseif length(u) == 2
    v = flip(u);
else
   v = [reversal(u(floor(end/2)+1:end)) reversal(u(1:floor(end/2)))];
end
