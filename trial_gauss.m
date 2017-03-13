function x = trial_gauss(A,b)
    n = length(b); x = zeros(n,1);
    for k=1:n-1 % forward elimination
        for i=k+1:n
            xfact = A(i,k)/A(k,k);
            for j=k+1:n
                A(i,j) = A(i,j)-xfact*A(k,j);
            end
            b(i) = b(i)-xfact*b(k);
        end
    end
% End of Forward elimination    
    if (abs(A(n,n)) <1E-10 )
        disp('no solution');
        x = [];
        return ;
    else
    % back substitution
        x(n) = b(n)/A(n,n);
        for i=n-1:-1:1  % Acting on rows
            sum = b(i);  
            for j=i+1:n  % Acting on columns
                sum = sum-A(i,j)*x(j);
            end
            x(i) = sum/A(i,i);
        end
    end 
    return;