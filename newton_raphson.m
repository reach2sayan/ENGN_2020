function x = newton_raphson(x)
%NEWTON_RAPHSON Summary of this function goes here
%   Detailed explanation goes here
xold = x;
J = [1, -0.25; cos(x(1)), 1];
F = [x(1)-0.25*x(2)+(pi/2);sin(x(1))+x(2)-1];

while abs(xold(1) - x(1)) < 0.000001 && abs(xold(1) - x(1)) < 0.000001
    xold =  x;
    x = x - inv(J)*F;
    J = [1, -0.25; cos(x(1)), 1];
    F = [x(1)-0.25*x(2)+(pi/2);sin(x(1))+x(2)-1];
end
    
end

