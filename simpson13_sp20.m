function simpson13 = simpson13_sp20(f,a,b,n)
%SIMPSON13_SP20 Summary of this function goes here
%   Detailed explanation goes here
h = (b-a)/n;
x = a;
s1 = 0;
s2 = 0;
f0 = f(a);
for k = 2:n
    x = x + h;
    if mod(k,2) == 0 %if k is even
        s1 = f(x) + s1;
    else
        s2 = f(x) + s2;
    end
end

f2m = f(b);
simpson13 = (h/3)*(f0 + f2m + 4*s1 + 2*s2);
end

