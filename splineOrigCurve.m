function [x y] = splineOrigCurve()

x = linspace(-4,4,10000);
y = linspace(0,0,10000);

for i = 1:length(x)
    if x(i) >= -2 && x(i) <= 2
       y(i) = sqrt(4 - x(i)*x(i));
    end
end
end