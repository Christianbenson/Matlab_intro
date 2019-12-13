%% D1
clc
clear

syms y(t)
ode = diff(y,t) == 8*t + 3*sin(4*t) - 5*y.^2

%% D2
clc
clear

x = [ 0.000 1.000 2.000 3.000 4.000 5.000 ];
y = [ 3.749 4.689 6.273 5.897 6.381 7.003 ];

plot(x,y,'+')
hold on
p = poly(x,y);
x = linspace(-2,7);
plot(x, polyval(p, x));

%% D3
