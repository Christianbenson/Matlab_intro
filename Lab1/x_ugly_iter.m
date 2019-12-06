function [x_new] = x_ugly_iter(S, x_old)
%X_ITER Calculates next iteration in approximation of sqrt(S)
% 
    x_new = (x_old + (S./x_old))/2; 
end

