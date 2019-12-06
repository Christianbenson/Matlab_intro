clear
clc
clf 
close all

%% D1
p = [1 -7 -106 742 2025 -14175]
r = roots(p)

for i = 1:length(r)
    fprintf("Result of eqn when using %f as x: ", r(i))
    x = r(i);
    polyval(p, x)
end


%% D2
prompt = "Type polynomial coefficients in descending order: [x2 x1 k] for example.\n";
roots = input(prompt);
polynomial = poly(roots)
x1 = linspace(-50,50,100);
figure
plot(x1, polyval(polynomial, x1))


%% D3
f = @(t) 2*exp(-0.5*t) + 2*cos(2*t);
from = 1.1;
to = 3.4;

integral(f, from, to)

%% D4 Approach: find minimum, initial guess in the middle of interval
clf
clc
close all
clear
g = @(x) (cos(exp(x)))./(1-x);
local_minima = fminsearch(g, 2.5)

x = linspace(2,3);
figure
plot(x,g(x))
grid on

%% D5




