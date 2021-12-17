% Function for handling distinct roots dist_roots.m
% ===Inputs:
% norm_a -- normalized a, see normalize.m
% norm_b -- normalized b, see normalize.m
% norm_c -- normalized c, see normalize.m
% normalized values for a,b,c, as established in normalize.m and
% quadroots.m
%
% ===Outputs:
% x1 -- first x value, may or may not be the same as x2
% x2 -- second x value, may or may not bet he same as x1

function [x1,x2] = dist_roots(norm_a,norm_b,norm_c)

x1 = (-norm_b - sqrt(norm_b*norm_b - 4*norm_a*norm_c))/ (2*norm_a);
x2 = norm_c / (norm_a * x1);

end