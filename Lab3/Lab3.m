%% D1
clc
clear

dydt = @(t,y) 8*t + 3*sin(4*t)-5*y.^2;
tspan = [0 5];
y0 = 4;
[t, y] = ode23(dydt, tspan, y0);
y(end)

%% D2
clc
clear

x = [ 0.000 1.000 2.000 3.000 4.000 5.000 ];
y = [ 3.749 4.689 6.273 5.897 6.381 7.003 ];

plot(x,y,'+')
hold on
p = polyfit(x,y,5);
x = linspace(-10,10,1000);
plot(x, polyval(p, x));
axis([-3 7 0 10])

%% D3
clc
clear

x = [ 0.10 0.20 0.30 0.40 0.50 0.60 0.70 0.80 0.90 1.00 1.10 1.20 1.30 1.40 1.50 ];
y = [ 1.77 1.98 2.19 2.23 2.38 2.77 2.81 2.99 3.12 3.17 3.21 3.71 3.48 3.36 3.90 ]

ysquared = y.^2; % Square to approximate with kx+m
params = polyfit(x,ysquared,1) % kx+m approximation

params(2) = params(2)/params(1); % Find values for a and b
params(1) = sqrt(params(1));

plot(x,y,'+')
hold on
b = table(x,y);
xparam = linspace(0,3);
plot(xparam, params(1).*sqrt(xparam + params(2)));



%% D4
clc
clear
close all
urlwrite('http://cs.lth.se/edaa55/matlab/race', 'race.txt');
v = csvread('race.txt');

x = linspace(0, 40, 6000);
plot(x, v)
v(find(v>80)) = v(find(v>80) - 1);
figure
plot(x, v)

distance = trapz(x, v)

%% D7
clc
clear
close all

urlwrite('http://cs.lth.se/edaa55/matlab/const-accel', 'const_accel.txt');
v = csvread('const_accel.txt');
s = size(v);
x = linspace(0, 5, s(1));
x = transpose(x);
plot(x, v)

p = polyfit(x,v,1);
a = p(1)
%plot(x, p)

%% D9
clc
clear
close all
M = 1171.42;
r = 0.3515;
C = 0.24;
A = 2.4;
rho = 1.29;

f = @(v) 4*M/r - (C*rho*A*v.^2)/2;

mass = 2107.98;
a = @(t, v) f(v)./mass;
tspan = [0 3];
y0 = 0;
[t, y] = ode23(@(t,y) a(t,y), tspan, y0);
y(end) %% This one should be lower than whatever measured value we got ? dunno check it

%% D10


