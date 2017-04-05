function yc = assign6(xc,a4)
%ASSIGN6 Summary of this function goes here
%   Detailed explanation goes here
n = length(xc);
yc = xc;
for i = 1:n
    yc(i) = exp(a4(1))*xc(i)*exp(a4(2)*xc(i));
end

end

