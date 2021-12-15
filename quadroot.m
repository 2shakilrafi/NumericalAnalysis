% The main quadroots function. 
%
% ==Inputs:
% a -- coefficient of x^2, regardless of 0
% b -- coefficient of x, regardless of 0
% c -- constant term, regardless of 0

% ==Outputs:
% x1 -- first root, may or may not be the same as x2
% x2 -- second root, may or may not be the same as x1
% errflag --S => the function proceeds, not shown to user
%           Z => all zero coefficients, no unique solution
%           N => NaN as a coefficient
%           C => One of more complex coefficients
%           E => One or more empty strings as coefficients

% The inputs are first sanitized, which gives us the errorflag (see
% sanitize.m function). 

% If the sanitize function gives us an 'S', the sanitized inputs are
% normalized (see normalize.m), else the error string of the sanitize
% function is displayed.

% The normalized inputs are then run through a roots_code function
% (see roots_code.m) that classifies the function according to roots by
% first checking whether a>0 and by comparing determinant b^2-4ac.

% Depending on what the roots_code.m function gives us the function spins
% off into four separate subroutines. See roots_code.m documentation

function [x1,x2,errflag] = quadroot (a,b,c)

errflag = sanitize(a,b,c);
if strcmp(sanitize(a,b,c),'S -- Safe') == 1
    [norm_a,norm_b,norm_c]= normalize(a,b,c);
    if strcmp(roots_code(norm_a,norm_b,norm_c),'R') == 1
        [x1,x2] = rep_roots(norm_a,norm_b,norm_c);
    elseif strcmp(roots_code(norm_a,norm_b,norm_c),'D') == 1
        [x1,x2] = dist_roots(norm_a,norm_b,norm_c);
    elseif strcmp(roots_code(norm_a,norm_b,norm_c),'I') == 1
        [x1,x2] = im_roots(norm_a,norm_b,norm_c);
    elseif strcmp(roots_code(norm_a,norm_b,norm_c),'L') == 1
        [x1,x2]= linear(norm_b,norm_c);
    else
        fprintf('Fatal exception');
    end
else
    x1= '!Error';
    x2= '!Error';
end
end

