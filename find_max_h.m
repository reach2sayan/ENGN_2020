function h_max = find_max_h(h5)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
n = length(h5);

for i = 1:n
    I = vpa(simpsons(@func_q5,h5(i),0,2),5);
    if abs(I - 1.2595) < 0.000001
        h_max = h5(i);
        return;
    end
end
end

