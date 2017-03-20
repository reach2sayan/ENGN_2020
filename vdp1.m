function dydx = vdp1(x,y)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
dydx = [y(2); -3*y(2)-10*y(1)+sin(4*x)+1];

end

