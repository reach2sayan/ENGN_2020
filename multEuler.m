function y = multEuler(vdp1,x,h,y0)
%MULTEULER Summary of this function goes here
%   Detailed explanation goes here

n = length(x);
y = zeros(n,2);

y(1,:) = y0;

for i = 2:n
    y(i,:) = y(i-1,:) + h.*(vdp1(x(i-1),y(i-1,:))');
end

end

