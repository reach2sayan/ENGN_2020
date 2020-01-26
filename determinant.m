function [d] = determinant(A)
%DETER Summary of this function goes here
%   Detailed explanation goes here
    [nrow,ncol] = size(A);
    
    if nrow == ncol
        if size(A) == [1 1]
            d = A(1,1);
        elseif size(A) == [2 2]
            d = A(1,1)*A(2,2) - A(1,2)*A(2,1);
        else
            d = 0;
            for i = 1:ncol
                d = d + ((-1)^(i+1)*A(1,i)*determinant(A(2:end,[1:i-1 i+1:end])));
            end
        end
    else
        disp('Dimension mismatch');
    end
end

