%% Hemuppgift 1:
clear
close all
clc

prompt = "Enter a number/vector to approximate square root of: \n";
S = input(prompt);

% Hackelyhack to display 10 first
x = S./2;
for i = 1:10 
    x = x_ugly_iter(S, x)
end

%bit more proper calling of function
precision = 0.0000001;
[sqrt_result, iterations] = kvdrt(S , precision)

