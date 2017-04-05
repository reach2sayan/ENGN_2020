function y = func7(theta)
%FUNC7 Summary of this function goes here
%   Detailed explanation goes here
y = linspace(0,0,1000);
for i = 1:length(theta)
    y(i) = sqrt(1/(0.0865*cos(theta(i))*cos(theta(i)) + 0.0494*sin(theta(i))*sin(theta(i))));
end
end

