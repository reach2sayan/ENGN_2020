function [x]= gauss_seidel2( A,b,x )
%GAUSS_SEIDEL2 Summary of this function goes here
%   Detailed explanation goes here
 xnew = x;
 converged = 0;
 iter = 0;
 I = eye(3);
L = zeros(3);
U = zeros(3);
iter = 0;
xnew = x;

 for i = 1:3
    for j = 1:i
        if i~=j
            L(i,j) = A(i,j);
        end
    end
 end
for i = 1:3
    for j = i:3
        if i ~= j
            U(i,j) = A(i,j);
        end
    end
end
C = -inv(I+L)*U;
rho = abs(max(eig(C)));
w = 2/(1 + sqrt(1-rho));
%w = 1;
W = w*eye(3);
rho
while converged == 0
    x = xnew;
    iter = iter + 1;
    xnew = inv(I + W*L)*(x + W*b - W*(U + I)*x);

    for i = 1:3
         if abs(xnew(i) - x(i)) < 0.000001
             converged = 1;
         else
             converged = 0;
         end
    end
end
iter
end

