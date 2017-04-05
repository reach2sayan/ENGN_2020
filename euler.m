function [y x] = euler(x,h,f,y0)
%EULER Summary of this function goes here
%   Detailed explanation goes here
n = length(x);
y = linspace(0,0,n);
y(1) = y0;
for i = 2:n
    y(i) = y(i-1) + h*f(x(i-1),y(i-1));
end

end

