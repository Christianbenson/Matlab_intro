%% D1 skriv i kommandof?nstret:
1+1
4*8
5-2
8/4

%% D2 
pi
sqrt(3)
sqrt(-3)
sqrt(1i)
exp(pi*1i)

%% D3 uppgift 1
z = exp(pi*1i);
abs = abs(z)
argument = angle(z)

%% D3 uppgift 2
z = sqrt(1i);
real_part = real(z)
imaginary_part = imag(z)

%% D4 komplexa tal
a = 3 + 2i;
b = 5 - 1i;
x = a * b

%% D5/6/7 Funktioner
clc
clf

g = @(x) exp(-0.1.*x).*cos(x);
x = linspace(0,10);
y = g(x);
plot(x,y)

%% D8
clf
clc
h = 1e-6;
deriv = @(f,x) ((f(x+h)-f(x))./h);


func = @(x) x.^2 + 2;
x = linspace(0,2);
y = func(x);
plot(x, y, '-b');
hold on
plot(x, deriv(func, x), '-r');
legend('function', 'derivative');

%% D9 handling plots - run section 'Funktioner' first
hold on
plot(x, deriv(g,x), '-r')
legend('function g(x)', 'derivative of g(x)')
title('Funktionen och dess derivata')
print('funktionsbild','-dpng')

%% D10
h_1 = @(x) exp(-0.1.*x).*cos(x) - 0.1.*exp(-0.1.*x).*sin(x);
h_2 = @(x) -0.1.*exp(-0.1.*x).*cos(x) - exp(-0.1.*x).*sin(x);
h_3 = @(x) -0.1.*exp(-0.1.*x).*cos(x) - 0.1.*exp(-0.1.*x).*sin(x);

calculated_derivative = deriv(g, x);
derivative_1 = h_1(x);
derivative_2 = h_2(x);
derivative_3 = h_3(x);

diff_1 = derivative_1 - calculated_derivative;
diff_2 = derivative_2 - calculated_derivative;
diff_3 = derivative_3 - calculated_derivative;

norms = [norm(diff_1), norm(diff_2), norm(diff_3)];
best_derivative = find(norms == min(norms))

%% D11 - generating Matrices
clear
clf
clc

M_1 = [3.*eye(4);2.*ones(2,4)]
M_2 = [8.*eye(5),2.*ones(5,3)]


%% D12 - systems
clear
clf
clc

A = [3,5,6 ; 10,20,15 ; 5,15,-10];
Y = [-195 ; -780 ; -685];
X = A\Y

should_be_equal_to_Y = A*X

%% D13
clear
clc
A = [1,1,-1 ; 2,1,1 ; 4,3,-1];
Determinant = det(A)

Y = [2;3;4];
Solution = A\Y

