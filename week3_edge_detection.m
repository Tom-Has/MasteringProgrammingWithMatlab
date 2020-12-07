function eddi = edgy(pic)
pic = double(pic);
weight_x = [-1 0 1; -2 0 2; -1 0 1];
weight_y = [1 2 1; 0 0 0; -1 -2 -1];
[row col] = size(pic);
for i = 2 : row - 1
   for j = 2 : col - 1
      A = pic(i - 1 : i + 1, j -1 : j + 1);
      sx = weight_x .* A; sy = weight_y .* A; sx = sum(sum(sx)); sy = sum(sum(sy)); 
      M = sqrt(sx.^2 + sy.^2);
      eddi(i-1, j-1) = uint8(M);
   end
end
