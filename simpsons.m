function I = simpsons(f,h,a,b)
%SIMPSONS Summary of this function goes here
%   Detailed explanation goes here
x = [a:h:b];
% N = (b-a)/h;
I = (h/3)*f(a);
l = length(x);

for i = 2:l-1
    if mod(i,2) == 0
        I = I + (h/3)*2*f(x(i));
    else
        I = I + (h/3)*4*f(x(i));
    end
end

I = I + (h/3)*f(b);

end

