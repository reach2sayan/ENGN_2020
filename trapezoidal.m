function I = trapezoidal(f,h,a,b)
%TRAPEZOIDAL Summary of this function goes here
%   Detailed explanation goes here
x = [a:h:b];
N = (b-a)/h;
I = (h/2)*f(a);

for i = 2:N
    I = I + h*f(x(i));
end

I = I + (h/2)*f(b);

end

