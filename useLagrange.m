% lagrange example
x=[-4;-3;-2;-1;0;1;2;3;4];
y=[0;0;0;sqrt(3);2;sqrt(3);0;0;0];
%plot(x,y)
[P,R,S] = lagrangepoly(x,y);
% 
xx = linspace(-4,4,7000);
yy = polyval(P,xx);
%figure(1)
% MATLAB cubic spline function
%plot(xx,yy,x,y,'or',R,S,'.b',xx,spline(x,y,xx),'--g')
