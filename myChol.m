function L = myChol(A)
%MYCHOL User defined Cholesky decomposition function

[m n] = size(A); %get the size of the matrix
L = zeros(m); %initialize the L matrix
sum = 0;

%check if the matrix is square
if m ~= n
    disp('Not a square matrix');
end

%main cholesky decomposition algorithm
for i = 1:n
    for j = 1:n
        if j == 1 && i == 1
            L(j,i) = sqrt(A(j,i));
        elseif i == 1 && j >= 2
            L(j,i) = A(j,1)/L(1,1);
        elseif i == j && j >= 2
            sum = 0;
            for k = 1:j-1
                sum = sum + L(j,k)^2;
            end
            L(j,j) = sqrt(A(j,j) - sum);
        elseif i >= j+1 && j >= 2
            sum = 0;
            for k = 1:j-1
                sum = sum + L(j,k)*L(i,k);
            end
            L(i,j) = (1/L(j,j))*(A(i,j) - sum);
        end
    end
end
          
end

