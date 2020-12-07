function gout = name_value_pairs(varargin)
for j = 1 : 2 : nargin
    if ~ischar(varargin{j})
        gout = {}; return;
    end
end
if nargin == 0 || mod(nargin, 2) == 1
    gout = {};
else
    gout = cell(2, nargin/2);
    for i = 1 : nargin
        gout{i} = varargin{i};
    end
    gout = gout';
end
