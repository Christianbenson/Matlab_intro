function [kvdrt, iter] = kvdrt(S, prec)
%KVDRT Takes inputs S and prec, where: 
% S is vector to find square root of 
% prec is desired precision. 
% 
% Outputs: [Calculated approximation of square root, iterations required to reach desired precision] 
%
% If desired precision is not reached within 10000 iterations script
% automatically cancels and returns current values at 10000 iterations.
%
    kvdrt = S./2;
    timeout_limit = 10000;

    for iter = 1:timeout_limit
        x_old = kvdrt;                          % Store old value
        kvdrt = x_iter(S, x_old);               % Update with new iteration
        if prec_achieved(kvdrt, x_old, prec)
            break
        end
    end
end

%% Helper to calculate diff between iterations
function diffCheck = prec_achieved(x_new, x_old, prec)
    diffCheck = abs(x_new-x_old) < prec;
end

%Calculates next iteration in approximation of sqrt(S)
function x_new = x_iter(S, x_old)
    x_new = (x_old + (S./x_old))/2; 
end

