function y = adams_moulton(vdp1,x,h,y0)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
n = length(x);
y = zeros(n,1);

y(1,:) = y0;

for i = 2:n
    if i == 2
        y(i,:) = y(i-1,:) + (h/24)*(55*vdp1(x,y(i-1,:)))';
        y(i,:) = y(i-1,:) + (h/24)*(9*vdp1(x,y(i,:)) + 19*vdp1(x,y(i-1,:)))';
    elseif i == 3
        y(i,:) = y(i-1,:) + (h/24)*(55*vdp1(x,y(i-1,:)) - 59*vdp1(x,y(i-2,:)))';
        y(i,:) = y(i-1,:) + (h/24)*(9*vdp1(x,y(i,:)) + 19*vdp1(x,y(i-1,:)) - 5*vdp1(x,y(i-2,:)))';
    elseif i == 4
        y(i,:) = y(i-1,:) + (h/24)*(55*vdp1(x,y(i-1,:)) - 59*vdp1(x,y(i-2,:)) + 37*vdp1(x,y(i-3,:)))';
        y(i,:) = y(i-1,:) + (h/24)*(9*vdp1(x,y(i,:)) + 19*vdp1(x,y(i-1,:)) - 5*vdp1(x,y(i-2,:)) + vdp1(x,y(i-3,:)))';
    else
        y(i,:) = y(i-1,:) + (h/24)*(55*vdp1(x,y(i-1,:)) - 59*vdp1(x,y(i-2,:)) + 37*vdp1(x,y(i-3,:)) - 9*vdp1(x,y(i-4,:)))';
        y(i,:) = y(i-1,:) + (h/24)*(9*vdp1(x,y(i,:)) + 19*vdp1(x,y(i-1,:)) - 5*vdp1(x,y(i-2,:)) + vdp1(x,y(i-3,:)))';
    end
end
        
end
    
