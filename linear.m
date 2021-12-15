% Function to handle if a = 0. Straightforward solving of linear equation.
% Inputs are
% norm_a
% norm_b
% norm_c
% the normalized values of a,b,c as per the convention established in
% quadroots.m
%
% Outputs are:
% x1 = x1, first x value, may or may not be the same as x2
% x2 = x2, second x value, may or may not be the sam eas x1

function [x1,x2] = linear(norm_b,norm_c)

x1 = -norm_c/norm_b;
x2 = -norm_c/norm_b;

end