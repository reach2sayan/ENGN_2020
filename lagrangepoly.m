function [P,R,S] = lagrangepoly(X,Y,XX)

% Make sure that X and Y are row vectors
if size(X,1) > 1;  X = X'; end
if size(Y,1) > 1;  Y = Y'; end
if size(X,1) > 1 || size(Y,1) > 1 || size(X,2) ~= size(Y,2)
  error('both inputs must be equal-length vectors')
end

N = length(X);

pvals = zeros(N,N);

% Calculate the polynomial weights for each order
for i = 1:N
  % the polynomial whose roots are all the values of X except this one
  pp = poly(X( (1:N) ~= i));
  % scale so its value is exactly 1 at this X point (and zero
  % at others, of course)
  pvals(i,:) = pp ./ polyval(pp, X(i));
end

% Each row gives the polynomial that is 1 at the corresponding X 
% point and zero everywhere else, so weighting each row by the 
% desired row and summing (in this case the polycoeffs) gives 
% the final polynomial
P = Y*pvals;

if nargin==3
  % output is YY corresponding to input XX
  YY = polyval(P,XX);
  % assign to output
  P = YY;
end

if nargout > 1
  % Extra return arguments are values where dy/dx is zero
  % Solve for x s.t. dy/dx is zero i.e. roots of derivative polynomial
  % derivative of polynomial P scales each power by its power, downshifts
  R = roots( ((N-1):-1:1) .* P(1:(N-1)) );
  if nargout > 2
    % calculate the actual values at the points of zero derivative
    S = polyval(P,R);
  end
end
