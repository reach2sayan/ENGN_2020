function x = golden_search(xu,xl,f)
%GOLDEN_SEARCH Summary of this function goes here
%   Detailed explanation goes here
converged = 0;
maxiter = 100;
r = (sqrt(5) - 1)/2;
while converged == 0
    c = xl + (xu - xl)*r;
    d = xu - (xu - xl)*r;
    if f(c) < f(d)
        xu = d;
    else
        xl = c;
    end
    
    if abs(xu - xl) < 0.000001
        converged = 1;
        x = (xu + xl)/2;
    end
    maxiter = maxiter - 1;
    if maxiter == 0
        break;
    end
end
end

