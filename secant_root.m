function x = secant_root(f,x0,x1)
%SECANT_ROOT Summary of this function goes here
%   Detailed explanation goes here
x = x1;
oldx = x0;

while abs(f(oldx) - f(x)) > 0.000001
    xnew = x - f(x)*((x - oldx)/(f(x) - f(oldx)));
    oldx = x;
    x = xnew;
end

end

