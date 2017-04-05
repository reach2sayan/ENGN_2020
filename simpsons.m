function I = simpsons(f,N,a,b)
%SIMPSONS Summary of this function goes here
%   Detailed explanation goes here

h = (b-a)/N;
x = [a:h:b];
I = (h/3)*f(a);
for i = 2:l-1
    if mod(i,2) == 0
        I = I + (h/3)*4*f(x(i));
    else
        I = I + (h/3)*2*f(x(i));
    end
end
%I = I + (h/3)*4*f(x(N-1));
I = I + (h/3)*f(b);

end

