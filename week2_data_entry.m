function d = voters(varargin)
    if mod(length(varargin), 2) == 0
        d = varargin{1};
        return
    elseif isempty(varargin{1})
        d = struct([]);
    else
        d = varargin{1};
    end
    len = length(d);
    corrector = 1;
    for i = 2 : 2 : length(varargin)
        if ~(ischar(varargin{i}) || isstring(varargin{i})) || ~(isnumeric(varargin{i + 1}) && (ceil(varargin{i + 1}) == floor(varargin{i + 1})))
            d = varargin{1};
            break
        else
           d(len + i - corrector).Name = string(varargin{i});
           d(len + i - corrector).ID = varargin{i + 1};
           corrector = corrector + 1;
        end
    end
end
