nx = 4;
ny = 4;

y = zeros(nx,ny);
for i = 1:ny
    y(1,i) = (i-1)*(i-1)*(i-1);
    y(nx,i) = (i-1)*(i-1)*(i-1) - 27*(i-1);
end

for i = 1:nx
    y(i,ny) = 27 - 9*(i-1)*(i-1);
end