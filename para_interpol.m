function x = para_interpol(f,x0,x1,x2)
%PARA_INTERPOL Summary of this function goes here
%   Detailed explanation goes here
converged = 0;

while converged == 0
    x3 = (f(x0)*(x1^2 - x2^2) + f(x1)*(x2^2 - x0^2) + f(x2)*(x0^2 - x1^2))/(2*f(x0)*(x1 - x2) + 2*f(x1)*(x2 - x0) + 2*f(x2)*(x0 - x1));
    if f(x3) > f(x1)
        x0 = x1;
        x1 = x3;
    else
        x2 = x1;
        x1 = x3;
    end
    
    if abs(x1 - x3) < 0.000001
        converged = 1;
        x = (x1+x3)/2;
    end
end
end

