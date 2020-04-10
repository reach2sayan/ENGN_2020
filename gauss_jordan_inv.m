function [ A ] = gauss_jordan_inv( A )
% Matrix to find the inverse of a matrix using Gauss Jordan method

    [n,c] = size(A); %get matrix size and check if square
    if n ~= c
        disp('The arrary is not square');
        return;
    end

    inv = A; %declaring the identity matrix to be converted into inverse
    A = [(A)*(A') inv];

    %partial pivoting
    for k = 1:n-1
        m = k;
        for j = k+1:n
            if abs(A(m,k)) < abs(A(j,k))
                m = j;
            end 
        end
        
        %if pivot is zero swap rows
        if A(m,k) == 0 
            disp('The matrix has no inverse');
            return
        else
            for p = 1:2*n
                temp = A(k,p);
                A(k,p) = A(m,p);
                A(m,p) = temp;
            end
        end
        
        %basically if you have a complete row of zeros
        if A(n,n) == 0
            disp('The matrix has no inverse');
            return
        end
        
        for i = k+1:n
            mult = A(i,k)/A(k,k);
            for j = k:2*n
                A(i,j) = A(i,j) - mult*A(k,j);
            end
        end
    end
     
    %Making Diagonal entries 1
    for k = 1:n
        mult = A(k,k);
        for i = 1:2*n
            A(k,i) = A(k,i)/mult;
        end
    end
end
