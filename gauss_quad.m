function  I = gauss_quad(f,a,b,n)
%GAUSS_QUAD Summary of this function goes here
%   Detailed 
if n==2
    x=[-1/sqrt(3);1/sqrt(3)];
    fx = @(x) (a+(b-a)/2)+x*(b-a)/2;
    w=[1,1];
elseif n==3
    x=[-sqrt(3/5);0;sqrt(3/5)];
    fx = @(x) ((b+a)/2) + ((b-a)/2).*x;
    w=[5/9,8/9,5/9];
end

I = 0;
fr = f(fx(x));

I = (b-a)*(w*fr)/2;
end

