function y = rk_single(x,h,f,y0)
%RK_SINGLE Summary of this function goes here
%   Detailed explanation goes here

n = length(x);
y = linspace(0,0,n);
y(1) = y0;

for i = 2:n
    k1 = h*f(x(i-1),y(i-1));
    k2 = h*f(x(i-1) + 0.5*h,y(i-1) + 0.5*k1);
    k3 = h*f(x(i-1) + 0.5*h,y(i-1) + 0.5*k2);
    k4 = h*f(x(i-1) + h, y(i-1) + k3);
    y(i) = y(i-1) + (1/6)*(k1 + 2*k2 + 2*k3 + k4);
end

