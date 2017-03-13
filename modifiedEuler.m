function [y x] = modifiedEuler(a,b,h,f,y0)
%MODIFIEDEULER Summary of this function goes here
%   Detailed explanation goes here
x = linspace(a,b,(b-a)/h);
n = length(x);
y = linspace(0,0,n);
y(1) = y0;

for i = 2:n
    k1 = h*f(x(i-1),y(i-1));
    k2 = h*f(x(i),y(i-1) + k1);
    y(i) = y(i-1) + 0.5*(k1 + k2);
end
    
end

