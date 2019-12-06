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
hold on
plot(x, g(local_minima)*ones(length(x)), 'g')
plot(local_minima*ones(length(x)), linspace(-1,1), 'g')
grid on

%% D5
clf
clc
close all
clear

h = @(x) 8*x.^2 - x - 3*exp(-x.^2); 
local_minima = fminsearch(h, 0)
local_min_val = h(local_minima)

linspacefrom = -2;
linspaceto = 2;

x = linspace(linspacefrom,linspaceto);
figure
plot(x,h(x))
grid on
hold on
roots = [fzero(h, local_minima-1), fzero(h, local_minima+1)]

minsNzerosX = [local_minima, roots(1), roots(2)];
minsNzerosY = [h(local_minima), h(roots(1)), h(roots(2))];
plot(minsNzerosX, minsNzerosY, '+r')
axis([-1 1 -5 5]);

%% D6
clc
clear
close all
N = 10;
diagval = 3;
subdiagval = 4;
v = subdiagval*ones(1,N-1);
M = diagval*eye(N) + diag(v, 1) + diag(v, -1)
det(M)

%% D7 Test complexmat
% PARAMS
N   = 8; 
z0  = -1 + 1i;
z1  = 1 - 1i;
complexmat(N, z0, z1)






