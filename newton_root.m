function x = newton_root(f,df,x0)
%NEWTON_ROOT Summary of this function goes here
%   Detailed explanation goes here

x = x0 - f(x0)/df(x0);
oldx = x;
while abs(f(x) - f(oldx)) > 0.000001
    oldx = x;
    x = x - f(x)/df(x);
end

end

