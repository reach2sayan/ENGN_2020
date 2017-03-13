function [L U X] = LUDecomp( A,b )
%TRIAL_LU Summary of this function goes here
%   Detailed explanation goes here

    [m n] = size(A);
    
    if m ~= n
        disp('Matrix not square.');
        return;
    end
    
    U = A;
    L = eye(n);
    
    for k = 1:n-1
        for j = k+1:n
            L(j,k) = U(j,k)/U(k,k);
            for i = k:n
                U(j,i) = U(j,i) - L(j,k)*U(k,i);
            end
        end
    end
    
    y = inv(L)*b;
    X = inv(U)*y;
end

