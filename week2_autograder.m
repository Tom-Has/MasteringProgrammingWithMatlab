function logo = grader(stud, inst, varargin)
for i = 1 : length(varargin)
   if ~isequal(stud(varargin{i}), inst(varargin{i}))
       logo = false; return;
   end
   logo = true;
end
