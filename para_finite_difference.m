function y = para_finite_difference(h,k,x)
%PARA_FINITE_DIFFERENCE Summary of this function goes here
%   Detailed explanation goes here
n = 6;
r = k/(h*h);
y = zeros(n);

%set up initial condition
for i = 1:n
    if x(i) < 0.5
        y(i,1) = x(i);
    else
        y(i,1) = 1 - x(i);
    end
end

for j = 1:n-1
    for i = 2:n-1
        y(i,j+1) = (1-2*r)*y(i,j) + r*(y(i+1,j) + y(i-1,j));
    end
end
        


end

