% Normalization function, 
%
% ===Inputs are:
% a -- coefficient of x^2, regardless of 0
% b -- coefficient of x, regardless of 0
% c -- constant coefficient, regardless of 0
% 
% ===Outputs are:
% norm_a -- normalized a, a / (max(abs(a,b,c))
% norm_b -- normalized b, b / (max(abs(a,b,c))
% norm_c -- normalized c, c / (max(abs(a,b,c))
% the normalized forms of a,b,c

function [norm_a,norm_b,norm_c] = normalize(a,b,c)
d = max(abs([a,b,c]));
norm_a = a/d;
norm_b = b/d;
norm_c = c/d;
end

