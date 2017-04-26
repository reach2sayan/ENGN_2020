function [x y xrecord H t] = grad_search(f,x0)
%GRAD_SEARCH Summary of this function goes here
%   Detailed explanation goes here
x = x0;
maxiter = 5;
converged = 0;
syms t x1 x2;
grad_f = gradient(f, [x1 x2]);
z(t) = [x1;x2] - t*grad_f;
newz = z(t);
g(t) = f(newz(1),newz(2));
diffg = diff(g,t);
eqng = diffg(t) == 0;
solt = solve(eqng,t);
soltfun(x1,x2) = solt;
t = double(soltfun(x(1),x(2)));
y = double(f(x(1),x(2)));
xrecord = x';
while converged == 0 
    fold = double(f(x(1),x(2)));
    x = x - double(soltfun(x(1),x(2))).*double(grad_f(x(1),x(2)));
    xrecord = [xrecord;x'];
    fnew = double(f(x(1),x(2)));
    y = [y;fnew];
    t = [t;double(soltfun(x(1),x(2)))];
    if abs(fnew - fold) < 0.00001
        converged = 1;
    else
        if maxiter == 0
            break;
        else
        converged = 0;
        end
    end
    maxiter = maxiter - 1;
end

H = [diff(f,x1,x1), diff(f,x1,x2); diff(f,x2,x1), diff(f,x2,x2)];
H = eig(double(H(x(1),x(2))));
end


