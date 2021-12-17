% Function for handling imaginary roots, 
%
% ===Inputs:
% norm_a -- normalized a according to the convention established in
% quadroots.m
% norm_b -- normalized b according to the convention established in
% quadroots.m
% norm_c -- normalized c according to the convention established in
% quadroots.m
%
% ===Outputs are:
% x1 -- a concatenated string consisting of the 're_part' '+' 'im_part' '+' 'i'.
% Where re_part is the real part and im_part is the im_part
%
% x2 -- Conjugate of x1, a concatenated string consisting of the 're_part' '-' 'im_part'
% '+' 'i', as explained in the paragraph above.

% Variables used are:
% re_part -- real part of the answer
% im_part -- imaginary part of the answer

function [x1,x2] = im_roots(norm_a,norm_b,norm_c)

im_part = num2str(sqrt(abs(norm_b*norm_b - 4*norm_a*norm_c))/(2*norm_a));
re_part = num2str(-norm_b/(2*norm_a));

x1 = strcat(re_part,'+',im_part,'i');
x2 = strcat(re_part,'-',im_part,'i');

end