% Function for handling repeated roots
% ===Inputs:
% norm_a -- normalized a, see normalize.m and quadroots.m
% norm_b -- normalized b, see normalize.m and quadroots.m
% norm_c -- normalized c, see normalize.m and quadroots.m
% 
% ===Outputs:
% x1 -- value of x1, may or may not be equal to output2
% x2 -- value of x2, may or may not be equal to output1

function [x1,x2] = rep_roots(norm_a,norm_b,norm_c)

x1 = (-norm_b - sqrt(norm_b*norm_b - 4*norm_a*norm_c))/ (2*norm_a);
x2 = norm_c / (norm_a * x1);


end