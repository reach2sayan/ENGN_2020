function [c ceq] = nonlincon(x)
%NONLINCON Summary of this function goes here
%   Detailed explanation goes here
c = [-x(1)*x(2) - 10, 1.5 + x(1)*x(2) - x(1) - x(2)]; 
ceq = [];
end

