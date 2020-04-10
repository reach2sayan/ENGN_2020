function I = monte_carlo_int(f,a,b,n)
%MONTE_CARLO_INT Summary of this function goes here
%   Detailed explanation goes here
count = 0;
for i=1:n
    randx = a+(b-a)*rand;
    randy = max(f(b),f(a))*rand;
    %randy = max(f(b),f(a))*rand;
    %randy = f(a)+(f(b)-f(a))*rand;
    if randy <= f(randx)
        count = count+1;
    end
end
I = (count/n)*(b-a)*max(f(b),f(a));

end

