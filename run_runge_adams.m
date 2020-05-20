f1 = @(x,y) -0.2*y;
f2 = @(x,y) 0.5*pi*sqrt(1-y*y);
f3 = @(x,y) (y-x).^2;
f4 = @(x,y) (y+x).*(y+x);
f5 = @(x,y) y;
f6 = @(x,y)  2*(1+y.*y);
f7 = @(x,y) x*y*y;
f8 = @(x,y) y - y*y;

f1e = @(x,y) 5*exp(-0.2.*x);
f2e = @(x,y) sin(1.5708*x);
f3e = @(x,y) (exp(2.*x).*(x -1) + x + 1)./(exp(2.*x) +1);
f4e = @(x,y) -(exp(2*1j.*x).*(x+1j) + x - 1j)/(exp(2*1j.*x)+1);
f5e = @(x,y) exp(x);
f6e = @(x,y)  tan(2*x);
f7e = @(x,y) -2/(x*x - 2);
f8e = @(x,y) exp(x)./(exp(x)+4);

x1 = GenerateFrameList(0,0.2,10)';
x2 = GenerateFrameList(0,0.1,10);
x3 = GenerateFrameList(0,0.1,10);
x4 = GenerateFrameList(0,0.1,10);
x5 = GenerateFrameList(0,0.1,10);
x6 = GenerateFrameList(0,0.05,10);
x7 = GenerateFrameList(0,0.1,10)';
x8 = GenerateFrameList(0,0.1,10);

y1_adam = adams_moulton(f8,x8,0.1,0.2);
y1_runge = runge_kutta(f8,x8,0.1,0.2);
y1e = f8e(x8,1);
err_adam_1 = abs((y1_adam - y1e'));
err_runge_1 = abs((y1_runge - y1e'));

y1_adam'
y1_runge'
y1e
err_adam_1'
err_runge_1'

