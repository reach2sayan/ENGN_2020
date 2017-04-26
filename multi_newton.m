function [x Hmod xrecord] = multi_newton(f,x0)
%MULTI_NEWTON Summary of this function goes here
%   Detailed explanation goes here
x = x0;
xrecord = x;
maxiter = 10000;
converged = 0;
syms x1 x2;
while converged == 0
   H = [diff(f,x1,x1) diff(f,x1,x2); diff(f,x2,x1) diff(f,x2,x2)];
   Hval = double(H(x(1),x(2)));
   gradf = gradient(f);
   gradval = double(gradf(x(1),x(2)));
   xold = x;
   x = x - Hval\gradval;
   xrecord = [xrecord x];
   if abs(x(1) - xold(1)) < 0.0001 && abs(x(2) - xold(2)) < 0.0001
       converged = 1;
       Hmod = det(Hval);
   end
   if maxiter == 0
       Hmod = det(Hval);
       break
   end
   maxiter = maxiter - 1;
end
end

