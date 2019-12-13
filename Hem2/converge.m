function [doesConverge] = converge(c)
%CONVERGE Summary of this function goes here
%   Detailed explanation goes here
z = c;
for doesConverge = 0:100
    if abs(z) > 2
        break
    end
    z = z*z + c;
end
end

