function [result] = gauss_seidel(A,b,x)
%GAUSS_SEIDEL Summary of this function goes here
%   Detailed explanation goes here
 n = length(A);
 X = x;
 Xold = X;
 converged = 0;
 iter = 0;
 I = eye(3);
L = zeros(3);
U = zeros(3);
 
 for i = 1:3
    for j = 1:i
        L(i,j) = A(i,j);
    end
end

for i = 1:3
    for j = i:3
        U(i,j) = A(i,j);
    end
end
C = -inv(I+L)*U;

 while converged == 0
     iter = iter+1;
     Xold = X;
     for i = 1:n
         sigma = 0;
         for j = 1:n
             if j ~= i
                sigma = sigma + A(i,j)*X(j);
             end
         end
         X(i) = (1/A(i,i))*(b(i) - sigma);
     end
     
     for i = 1:n
         if abs(X(i) - Xold(i)) < 0.000001
             converged = 1;
         else
             converged = 0;
         end
     end
     
 end
     rho = abs(max(eig(C)))
     X
     iter
     result = [rho iter];
end

