function a = nonlinear_regression(y,x,a)
%NONLINEAR_REGRESSION Summary of this function goes here
%   Detailed explanation goes here
n = length(x);
Z = zeros(n,2);
D = zeros(n,1);
converged = 0;
while converged == 0
    aold = a;
    for i = 1:n
        %the Z matrix would differ based on the fitting equation
        Z(i,1) = x(i)*exp(a(2)*x(i));
        Z(i,2) = a(1)*x(i)*x(i)*exp(a(2)*x(i));
        D(i) = y(i) - a(1)*x(i)*exp(a(2)*x(i));
    end
    anew = (Z'*Z)\(Z'*D);
    a = a + anew;
    if aold(1) - a(1) < 0.00001 && aold(2) - a(2) < 0.00001
        converged = 1;
    end
end

end

