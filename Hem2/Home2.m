clear
clc
close all

m = complexmat(1000, -2+1i, 1-1i);
v = arrayfun(@(x) converge(x),m);
image(v)

m1 = complexmat(1000, -1.4+0.48i, -1.1+0.24i);
v1 = arrayfun(@(x) converge(x), m1);
figure
image(v1)