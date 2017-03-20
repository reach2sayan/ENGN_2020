function [A_dft, y_dft] = DFT(N,y)
%DFT Summary of this function goes here
%   Detailed explanation goes here
w = exp(-(2*pi*1i)/N);

A = zeros(N);

for k = 1:N
    for j = 1:N
        A(k,j) = w^((k-1)*(j-1));
    end
end
A_dft = A;
y_dft = A*y;

end

