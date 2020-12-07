function logo = palindrome(cv)
if size(cv,2) == 1
    logo = true;
elseif size(cv,2) == 2
    logo = cv(1,1) == cv(1,2);
else
    if cv(1,1) == cv(1,end)
        logo = palindrome(cv(2 : end-1));
    else
        logo = false;
    end
end
