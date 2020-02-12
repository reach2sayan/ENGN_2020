function [L,U,rho,xnew,iter]= gauss_seidel_cas_project_SOR( A,b,x,n,SOR )
%GAUSS_SEIDEL2 Summary of this function goes here
%   Detailed explanation goes here
 xnew = x;
 converged = 0;
 iter = 0;
 I = eye(n);
 L = zeros(n);
 U = zeros(n);
 iter = 0;

for i = 1:n 
    for j = 1:i
        L(i,j) = A(i,j);
    end
end

for i = 1:n
    for j = i:n
        U(i,j) = A(i,j);
    end
end

for i = 1:n
    L(i,i) = 0;
    U(i,i) = 0;
end
C = -inv(I+L)*U;
rho = abs(max(eig(C)));
if SOR == true
    w = 2/(1+sqrt(1-rho))
else
    w =1 
end
W = w*eye(n);

while converged == 0
    iter = iter + 1;
    x = xnew;
    xnew = (I+W*L)\(x + W*b - W*(U+I)*x);
    for i = 1:n
         if abs(xnew(i) - x(i)) < 0.000001
             converged = 1;
         else
             converged = 0;
         end
    end
end

end

