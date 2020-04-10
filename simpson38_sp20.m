function simpson38 = simpson38_sp20(f,a,b,n)
%SIMPSON38_SP20 Summary of this function goes here
%   Detailed explanation goes here
h = (b-a)/n;
sum = f(b) + f(a); 
for k = 1:n-1
    if mod(k,3) == 0 
        sum = sum + 2 * f(a + k*h);
    else
        sum = sum + 3 * f(a + k*h);
    end
end  
    simpson38 = ((3*h) / 8 ) * sum ;
end

