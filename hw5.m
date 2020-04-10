f = @(x) x*exp(-x^2);
a = 0;
b = 0.4;

monte_carlo_int(f,a,b,10)
monte_carlo_int(f,a,b,100)
monte_carlo_int(f,a,b,1000)

trapezoidal(f,a,b,4)
trapezoidal(f,a,b,10)

simpson13_sp20(f,a,b,4)
simpson13_sp20(f,a,b,10)

simpson38_sp20(f,a,b,3)
simpson38_sp20(f,a,b,4)
simpson38_sp20(f,a,b,6)
simpson38_sp20(f,a,b,9)
simpson38_sp20(f,a,b,10)
simpson38_sp20(f,a,b,15)

romberg(f,a,b,1)
romberg(f,a,b,2)
romberg(f,a,b,3)

gauss_quad(f,a,b,2)
gauss_quad(f,a,b,3)




