function [x xrecord] = steep_des(x0)
%STEEP_DES Summary of this function goes here
%   Detailed explanation goes here
maxiter = 10;
x = x0;
xrecord = x;
converged = 0;
while converged == 0
    t = (5*x(1)*x(1) + 8*x(1)*x(2) + 5*x(2)*x(2))/(14*x(1)*x(1) + 14*x(2)*x(2) + 26*x(1)*x(2));
    xold = x;
    x = x - t*[2*x(1) + x(2); 2*x(2) + x(1)];
    if abs(x(1) - xold(1)) < 0.00001 && abs(x(2) - xold(2)) < 0.00001
        converged = 1;
    end
    xrecord = [xrecord x];
    if maxiter == 0
        break;
    end
    maxiter = maxiter - 1;
end
end

