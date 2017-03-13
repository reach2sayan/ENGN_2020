% lagrange example
clear;close all;
x=[-2;-1;0;1;2];
y=[0;0;1;0;0];
%plot(x,y)
[P,R,S] = lagrangepoly(x,y);
% 
xx = linspace(-2,2,4000);
yy = polyval(P,xx);
%figure(1)
% MATLAB cubic spline function
%plot(xx,yy,x,y,'or',R,S,'.b',xx,spline(x,y,xx),'--g')
