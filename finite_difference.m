function y = finite_difference(y0,nx,ny)
%FINITE_DIFFERENCE Summary of this function goes here
%   Detailed explanation goes here

y = y0;
converged = 0;

while converged == 0
    yold = y;
    for i = 2:nx - 1
        for j = 2:ny - 1
            y(i,j) = (1/4)*(y(i-1,j) + y(i+1,j) + y(i,j-1) + y(i,j+1));
        end
    end
    %check for convergence
    for i = 2:nx-1
        for j = 2:ny-1
            if abs(y(i,j) - yold(i,j)) < 0.000001
                converged = 1;
            else
                converged = 0;
            end
        end
    end
end


end

