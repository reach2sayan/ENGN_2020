function I = trapezoidal(f,a,b,n)
%TRAPEZOIDAL Summary of this function goes here
%   Detailed explanation goes here
h = (b-a)/n;
x = [a:h:b];
%N = (b-a)/h;
I = (h/2)*f(a);

for i = 2:n
    I = I + h*f(x(i));
end

I = I + (h/2)*f(b);

end

