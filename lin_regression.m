function a = lin_regression(y,x)
%LIN_REGRESSION Summary of this function goes here
%   Detailed explanation goes here
n = length(x);
z = [ones(n,1) x]; %This matrix would differ based on the linearized fit equation
a = (z'*z)\(z'*y);

end

