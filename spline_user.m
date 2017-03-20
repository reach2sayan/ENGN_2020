function [splineCoeff x y] = spline_user(f,N,k0,kN,X,h)
%SPLINECOEFF Summary of this function goes here
%   Detailed explanation goes here
A = zeros(N);
A(1,1) = 1;
coeff = linspace(0,0,N);
%x = linspace(a,b,(N-1)*1000);
%y = linspace(0,0,(N-1)*1000);
x = [];
y = [];
splineCoeff = zeros(N-1,4);
A(N,N) = 1;
coeff(1) = k0; 
coeff(N) = kN;
for i = 2:N-1
    A(i,i-1) = 1;
    A(i,i) = 4;
    A(i,i+1) = 1;
    coeff(i) = (3/h)*(f(i+1) - f(i-1));
end
K = trial_gauss(A,coeff');

for i = 1:N-1
   splineCoeff(i,1) = f(i);
   splineCoeff(i,2) = K(i);
   splineCoeff(i,3) = (3/(h*h))*(f(i+1) - f(i)) - (1/h)*(K(i+1) + 2*K(i));
   splineCoeff(i,4) = (2/(h*h*h))*(f(i) - f(i+1)) + (1/(h*h))*(K(i+1) + K(i));
end
for i = 1:N-1
    xtemp = linspace(X(i),X(i)+h,1000);
    ytemp = linspace(0,0,1000);
    for j = 1:1000
        ytemp(j) = splineCoeff(i,1) + splineCoeff(i,2)*(xtemp(j) - X(i)) + splineCoeff(i,3)*((xtemp(j) - X(i))^2) + splineCoeff(i,4)*((xtemp(j) - X(i))^3);
    end
    %ytemp = splineCoeff(i,1) + splineCoeff(i,2)*(xtemp - X(i)) + splineCoeff(i,3)*(xtemp - X(i)).^2 + splineCoeff(i,4)*(xtemp - X(i)).^3;
    x = horzcat(x,xtemp);
    y = horzcat(y,ytemp);
end
end

